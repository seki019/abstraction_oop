// Member 1: Interface (Abstract Class)
abstract class Processor {
  void process(String message);
}

// Member 1: Consumer Class
class MessageService {
  final Processor processor;

  MessageService(this.processor);

  void sendMessage(String message) {
    processor.process("Sending: $message");
  }

  void logMessage(String message) {
    processor.process("Logging: $message");
  }
}
