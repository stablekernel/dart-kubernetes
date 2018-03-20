import 'package:kubernetes/base.dart';

class ContainerStateWaiting extends Codable {
  ContainerStateWaiting();

  ContainerStateWaiting.empty();

  @override
  void decode(Coder decoder) {
    message = decoder.decode('message');
    reason = decoder.decode('reason');
}

  String message;
  String reason;

  @override
  void encode(Coder encoder) {
    encoder.encode('message', this.message);
    encoder.encode('reason', this.reason);
  }
}
