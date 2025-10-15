// Member 4: Implementation C - Push Notification
import 'package:abstraction_oop/main.dart';

class PushNotificationProcessor implements Processor {
  @override
  void process(String message) {
    print("[PUSH] $message");
  }
}
