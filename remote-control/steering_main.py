import zmq
import board
import busio
from adafruit_pca9685 import PCA9685

# Initialize ZMQ subscriber
context = zmq.Context()
socket = context.socket(zmq.SUB)
socket.connect("tcp://localhost:5556")  # Connect to the correct port
socket.setsockopt(zmq.SUBSCRIBE, b"")  # Subscribe to all messages

# Initialize I2C and PCA9685
i2c = busio.I2C(board.SCL, board.SDA)
pca = PCA9685(i2c, address=0x40)  # Adjust address if needed
pca.frequency = 333  # Set the frequency

# Define servo channel (adjust channel as needed)
SERVO_CHANNEL = 0

# Servo pulse width to duty cycle conversion
def pulse_width_to_duty_cycle(pulse_width, frequency):
    """
    Convert pulse width in milliseconds to duty cycle.

    Parameters:
        pulse_width (float): Pulse width in milliseconds.
        frequency (int): Frequency in Hz.

    Returns:
        int: Duty cycle value for PCA9685.
    """
    period_ms = 1000 / frequency  # Period in milliseconds
    return int((pulse_width / period_ms) * 0xFFFF)  # Scale to 16-bit range

# Servo position boundaries
SERVO_CENTER_PULSE = 1.5  # Center position pulse width in ms
SERVO_MAX_LEFT_PULSE = 1.0  # Maximum left position pulse width in ms
SERVO_MAX_RIGHT_PULSE = 2.0  # Maximum right position pulse width in ms

try:
    print("Starting servo control loop. Press Ctrl+C to exit.")
    while True:
        # Receive pulse width from the socket
        message = socket.recv_string()
        try:
            pulse_width = float(message)

            # Clamp pulse width within servo range
            pulse_width = max(SERVO_MAX_LEFT_PULSE, min(SERVO_MAX_RIGHT_PULSE, pulse_width))

            # Convert pulse width to duty cycle
            duty_cycle = pulse_width_to_duty_cycle(pulse_width, pca.frequency)

            # Set servo position
            pca.channels[SERVO_CHANNEL].duty_cycle = duty_cycle

            print(f"Pulse Width: {pulse_width} ms, Duty Cycle: {duty_cycle}")
        except ValueError:
            print(f"Invalid pulse width received: {message}")
except KeyboardInterrupt:
    print("Exiting program.")
finally:
    pca.deinit()
    socket.close()
    context.term()
