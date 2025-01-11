#include <iostream>
#include <unistd.h> // for usleep
#include "bldc.h"
#include "motortypes.h"

using namespace std;

// cur = current we want to accelerate to
//motor = the motor we want to accelerate
void accelerate (float cur, BLDC motor)
{
	motor.set_Current(cur);
} 

//For braking
/*void brake (BLDC motor)
{
	
}*/

//For steering
/*void steer ()
{

}*/

int main(void)
{
	// Initialize the Serial interface
	BLDC::init((char*)"/dev/ttyACM0");
	
	BLDC motor(VESC1, motor1);

	accelerate(25,motor);
	usleep(3000);
	
	
	BLDC::close();
}
