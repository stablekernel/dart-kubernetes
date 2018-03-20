import 'package:kubernetes/base.dart';

class ExecAction extends Codable {
  ExecAction();

  ExecAction.empty();

  @override
  void decode(Coder decoder) {
    command = decoder.decode('command');
}

  List<String> command;

  @override
  void encode(Coder encoder) {
    encoder.encode('command', this.command);
  }
}
