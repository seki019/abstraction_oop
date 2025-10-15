// Member 2: Implementation A - Email
import 'package:abstraction_oop/main.dart';

class EmailProcessor implements Processor {
  @override
  void process(String message) {
    print("[EMAIL] $message");
  }
}
