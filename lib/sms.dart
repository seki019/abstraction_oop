// Member 3: Implementation B - SMS
import 'package:abstraction_oop/main.dart';

class SMSProcessor implements Processor {
  @override
  void process(String message) {
    print("[SMS] $message");
  }
}
