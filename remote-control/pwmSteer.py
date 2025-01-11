import zmq
import lgpio
import time

GPIO_PIN = 13
chip = lgpio.gpiochip_open(0)  # Open chip 0 (the main GPIO chip)
lgpio.gpio_claim_input(chip, GPIO_PIN)

context = zmq.Context()
socket = context.socket(zmq.PUB)
socket.bind("tcp://*:5556")

def measure_pwm_pulse():
    start_time = 0
    end_time = 0

    # Wait until the signal is high
    while lgpio.gpio_read(chip, GPIO_PIN) == 0:
        start_time = time.time()

    # Wait until the signal is low
    while lgpio.gpio_read(chip, GPIO_PIN) == 1:
        end_time = time.time()

    # Calculate the pulse duration
    pulse_duration = end_time - start_time
    return pulse_duration

print("Starting...")
while True:
    pulse_width = measure_pwm_pulse()

    # Convert pulse width to milliseconds
    pulse_width_ms = pulse_width * 1000

    # Check if the pulse width is within the valid range (1.00 ms to 2.00 ms)
    if 1.00 <= pulse_width_ms <= 2.00:
        print(f"Pulse width: {pulse_width_ms:.2f} ms")
        socket.send_string(f"{pulse_width_ms:.2f}")
    else:
        print(f"Invalid pulse width: {pulse_width_ms:.2f} ms (ignored)")

    time.sleep(0.1)
