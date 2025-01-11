#include <stdio.h>
#include "bldc.h"
#include "motortypes.h"
#include <unistd.h> // for usleep
#include <iostream>
#include <string>
#include <zmq.hpp>
#include <sstream>
#include <cmath>
#include <lgpio.h> // Include lgpio header

#define LED1_PIN 25  // GPIO pin number for LED1
#define LED2_PIN 24  // GPIO pin number for LED2

float max_speed = 20; //Change the max speed here. The overall max value is 20.

int main()
{

    const int interval = 100; // Interval in milliseconds to update the command
    float pwm_signal;

	RxData testData = {};
	
	//Initialize the Serial interface.
	BLDC::init((char*)"/dev/ttyACM0"); //Here we change to the name of the device where the FSECS 4.12 is in the raspberry
	
	//Initialise the motor object, the parameters are defined in motortypes.h
	BLDC leftMotor(VESC1, motor1);

	//Initialise the zmq parameters:
	zmq::context_t context(1);
    zmq::socket_t socket(context, ZMQ_SUB);
    socket.connect("tcp://localhost:5555");
    socket.setsockopt(ZMQ_SUBSCRIBE, "", 0);

    
 	int h; // Handle for the GPIO chip


    h = lgGpiochipOpen(0); // Open GPIO chip 0
    if (h < 0) {
        fprintf(stderr, "Failed to open GPIO chip\n");
        return 1;
    }

    // Set the GPIO pins as output
    lgGpioClaimOutput(h, 0, LED1_PIN, 0); // LED1, initially off
    lgGpioClaimOutput(h, 0, LED2_PIN, 0); // LED2, initially off



    printf("Starting motor control based on PWM signalll...\n");
	
	while (true) {
        zmq::message_t message;
        socket.recv(message, zmq::recv_flags::none);
        std::string pulse_width_str(static_cast<char*>(message.data()), message.size());
        
        // Convert the received pulse width to a float
        float pulse_width;
        std::stringstream(pulse_width_str) >> pulse_width;
        
        // Map the pulse width to a value between 0 and 60
        // Assuming the pulse width range is between 1 ms and 2 ms
        float mapped_value = (pulse_width - 1.0f) * (max_speed*1000.0f);
		//printf("Value: %f\n" , mapped_value);
        if (mapped_value < 0) mapped_value = 0;
        if (mapped_value > (max_speed*1000)) mapped_value = (max_speed*1000);

		
		// Control the LEDs based on the mapped_value
        if (mapped_value == 0) {
            lgGpioWrite(h, LED1_PIN, 1); // Turn on LED1
            lgGpioWrite(h, LED2_PIN, 1); // Turn on LED2
        } else {
            lgGpioWrite(h, LED1_PIN, 0); // Turn off LED1
            lgGpioWrite(h, LED2_PIN, 0); // Turn off LED2
        }


		// Set the current to the motor based on the mapped value
		//leftMotor.set_Current(1);
		//leftMotor.set_Speed(mapped_value);
		
    }

    printf("Motor control stopped as PWM signal is 0.\n");
	BLDC::close();
	lgGpiochipClose(h); // Close the GPIO chip
    return 0;
}


/*
// Main program to test UART communication from BBB to VESC
// Last modified on 7/4/2017 by: Ryan Owens
#include <stdio.h>
#include "bldc.h"
#include "motortypes.h"
#include <unistd.h> // for usleep

int main(void) {
	// variables
	int command = 0;
	int sleep = 3000;
	int reads = 0;
	bool decrement = false;
	bool loop = true;
	
	float val = 0;
	float brake = 0;
	float pos = 0;
	
	RxData testData = {};
	
	// Initialize the Serial interface
	BLDC::init((char*)"/dev/ttyACM0");
	
	// Initialize motor objects
	// Parameters are defined in motortypes.h
	BLDC leftMotor(VESC1, motor1);
	BLDC rightMotor(VESC2, motor2);
	
	// Main loop 
	while(loop) {
		printf("Choose a command\n");
		printf("    1 : Set speed\n");
		printf("    2 : Set current\n");
		printf("    3 : Apply brake\n");
		printf("    4 : Set duty cycle\n");
		printf("    5 : Set position\n");
		printf("    6 : Sweep position 0-360 degrees\n");
		printf("    7 : Get values\n");
		printf("    8 : Send alive\n");
		printf("    9 : Get Position\n");
		printf("Other : End\n");
		printf("Enter a number: ");
		scanf("%d", &command);
		switch(command) {
			case 1:
				printf("Enter desired speed in RPM: ");
				scanf("%f", &val);
				leftMotor.set_Speed(val);
				rightMotor.set_Speed(val);
				printf("Speed set to %f RPM\n\n", val);
				break;
			case 2:
				printf("Enter desired current in Amps: ");
				scanf("%f", &val);
				leftMotor.set_Current(val);
				rightMotor.set_Current(val);
				printf("Current set to %f Amps\n\n", val);
				break;
			case 3:
				printf("Enter desired brake current in Amps: ");
				scanf("%f", &brake);
				leftMotor.apply_Brake(brake);
				rightMotor.apply_Brake(brake);
				printf("Brake current set to %f Amps\n\n", brake);
				break;
			case 4:
				printf("Enter desired duty cycle -1.0 to 1.0: ");
				scanf("%f", &val);
				leftMotor.set_Duty(val);
				rightMotor.set_Duty(val);
				printf("Duty cycle set to %f\n\n", val);
				break;
			case 5:
				printf("Enter desired position 0-360 degrees: ");
				scanf("%f", &pos);
				leftMotor.set_Pos(pos);
				rightMotor.set_Pos(pos);
				printf("Position set to %f\n\n", pos);
				break;
			case 6:
				printf("Sweeping position from 0-360 degrees\n\n");
				while (true) {
					leftMotor.set_Pos(pos);
					rightMotor.set_Pos(pos);
					if (pos == 360)
						decrement = true;
					else if (pos == 0)
						decrement = false;

					if (decrement == true)
						pos -= 1;
					else
						pos += 1;
					usleep(sleep);
				}
				break;
			case 7:
				// Loop through state machine until all reads are finished.
				// Must call the sample_Data() function continuously, or 
				// run inside a thread to read continuously
				// sample_Data() is non-blocking
				while (reads < BLDC::num_Motors()){
					if(BLDC::sample_Data())
						reads++;
				}
				leftMotor.print_Data();
				rightMotor.print_Data();
				break;
			case 8:
				leftMotor.send_Alive();
				rightMotor.send_Alive();
				printf("Alive sent\n\n");
				break;
			case 9:
				leftMotor.request_Pos();
				break;
			case 10: {
				printf("Enter desired current in Amps: ");
				scanf("%f", &val);
				printf("Enter duration to apply current (in milliseconds): ");
				int duration;
				scanf("%d", &duration);
				printf("Enter braking current in Amps: ");
				scanf("%f", &brake);

				// Variables for timing and control
				int elapsed = 0;
				const int interval = 100; // Interval in milliseconds to update the command
				printf("Applying %f Amps for %d milliseconds...\n", val, duration);

				// Apply current continuously for the specified duration
				while (elapsed < duration) {
					leftMotor.set_Current(val);
					rightMotor.set_Current(val);
					usleep(interval * 1000); // Wait for the interval
					elapsed += interval;
				}
				elapsed = 0;
				val = -1*val;
				while (elapsed < duration) {
					leftMotor.set_Current(val);
					rightMotor.set_Current(val);
					usleep(interval * 1000); // Wait for the interval
					elapsed += interval;
				}
				break;
			}

			default:
				loop = false;
				break;
		}
		command = 0;
		val = 0;
		brake = 0;
		reads = 0;
		}
	leftMotor.apply_Brake(3);
	rightMotor.apply_Brake(3);
	BLDC::close();
}
*/