import lgpio
import time

GPIO_PIN = 12
chip = lgpio.gpiochip_open(0)  # Open chip 0 (the main GPIO chip)
lgpio.gpio_claim_input(chip, GPIO_PIN)

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

try:
    while True:
        pulse_width = measure_pwm_pulse()
        print(f"Pulse width: {pulse_width * 1000:.2f} ms")
        time.sleep(0.1)

except KeyboardInterrupt:
    print("\nExiting...")
    lgpio.gpiochip_close(chip)
