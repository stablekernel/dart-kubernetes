import 'package:kubernetes/base.dart';

class ComponentCondition extends Codable {
  ComponentCondition(this.type, this.status);

  ComponentCondition.empty();

  @override
  void decode(Coder decoder) {
    error = decoder.decode('error');
    message = decoder.decode('message');
    status = decoder.decode('status');
    type = decoder.decode('type');
}

  String error;
  String message;
  String status;
  String type;

  @override
  void encode(Coder encoder) {
    encoder.encode('error', this.error);
    encoder.encode('message', this.message);
    encoder.encode('status', this.status);
    encoder.encode('type', this.type);
  }
}
