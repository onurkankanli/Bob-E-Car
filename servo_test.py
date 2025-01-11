import board
import busio
from adafruit_pca9685 import PCA9685
import time

# Initialize I2C bus (SDA=GPIO2, SCL=GPIO3 are board.SDA and board.SCL in Python)
i2c = busio.I2C(board.SCL, board.SDA)

# Create a PCA9685 instance and set frequency to 50 Hz
pca = PCA9685(i2c)
pca.frequency = 50

servo_channel = pca.channels[0]  # Using channel 0 for the servo

# Define min and max pulse width in microseconds for your servo
min_pulse = 1000  # microseconds (approx for 0°)
max_pulse = 2000  # microseconds (approx for 180°)

def angle_to_steps(angle):
    """Convert an angle in degrees (0 to 180) to PCA9685 steps (0 to 4095)."""
    # Ensure angle is within 0-180
    angle = max(0, min(180, angle))
    
    # Convert angle to pulse width
    pulse_width = min_pulse + (angle / 180.0) * (max_pulse - min_pulse)
    
    # Convert pulse width (µs) to steps
    # 1 step ≈ 20000 µs / 4096 ≈ 4.88 µs
    steps = int((pulse_width / 20000.0) * 4096)
    return steps

def set_servo_angle(angle):
    steps = angle_to_steps(angle)
    servo_channel.duty_cycle = steps

# Example usage:
# Move servo to 0°, wait 2s, then move to 90°, wait 2s, then move to 180°
set_servo_angle(0)
time.sleep(2)
set_servo_angle(90)
time.sleep(2)
set_servo_angle(180)
time.sleep(2)

# Return to 90°
set_servo_angle(90)
