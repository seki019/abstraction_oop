// Member 2: Implementation A - Email
class EmailProcessor implements Processor {
  @override
  void process(String message) {
    print("[EMAIL] $message");
  }
}
