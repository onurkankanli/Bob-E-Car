#include <iostream>
#include <string>
#include <zmq.hpp>
#include <sstream>
#include <cmath>

void receive_pulse_width() {
    zmq::context_t context(1);
    zmq::socket_t socket(context, ZMQ_SUB);
    socket.connect("tcp://localhost:5555");
    socket.setsockopt(ZMQ_SUBSCRIBE, "", 0);

    while (true) {
        zmq::message_t message;
        socket.recv(message, zmq::recv_flags::none);
        std::string pulse_width_str(static_cast<char*>(message.data()), message.size());
        
        // Convert the received pulse width to a float
        float pulse_width;
        std::stringstream(pulse_width_str) >> pulse_width;
        
        // Map the pulse width to a value between 0 and 60
        // Assuming the pulse width range is between 1 ms and 2 ms
        float mapped_value = std::round(((pulse_width - 1.0f) / (2.0f - 1.0f)) * 60.0f);
        if (mapped_value < 0) mapped_value = 0;
        if (mapped_value > 60) mapped_value = 60;

        std::cout << "Mapped pulse width value: " << mapped_value << std::endl;
    }
}

int main() {
    std::cout << "Starting to receive pulse width from Python program..." << std::endl;
    receive_pulse_width();
    return 0;
}
