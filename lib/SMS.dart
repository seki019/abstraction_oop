// Implementation B - SMS 
class SMSProcessor implements Processor {
  @override
  void process(String message) {
    print("[SMS] $message");
  }
}
