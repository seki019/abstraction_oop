// main.dart or bin/my_project.dart

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

// Member 2: Implementation A - Email
class EmailProcessor implements Processor {
  @override
  void process(String message) {
    print("[EMAIL] $message");
  }
}

// Member 3: Implementation B - SMS
class SMSProcessor implements Processor {
  @override
  void process(String message) {
    print("[SMS] $message");
  }
}

// Member 4 (optional): Implementation C - Push Notification
class PushNotificationProcessor implements Processor {
  @override
  void process(String message) {
    print("[PUSH] $message");
  }
}

// Demo / Integration program
void main() {
  // Use Email processor
  var emailService = MessageService(EmailProcessor());
  emailService.sendMessage("Hello via Email!");
  emailService.logMessage("Email logged successfully.");

  print("-------------------");

  // Use SMS processor
  var smsService = MessageService(SMSProcessor());
  smsService.sendMessage("Hello via SMS!");
  smsService.logMessage("SMS logged successfully.");

  print("-------------------");

  // Optional: Use Push Notification processor
  var pushService = MessageService(PushNotificationProcessor());
  pushService.sendMessage("Hello via Push Notification!");
  pushService.logMessage("Push notification logged successfully.");
}
