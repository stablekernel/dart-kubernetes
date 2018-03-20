import 'package:kubernetes/base.dart';

class StatusCause extends Codable {
  StatusCause();

  StatusCause.empty();

  @override
  void decode(Coder decoder) {
    field = decoder.decode('field');
    message = decoder.decode('message');
    reason = decoder.decode('reason');
}

  String field;
  String message;
  String reason;

  @override
  void encode(Coder encoder) {
    encoder.encode('field', this.field);
    encoder.encode('message', this.message);
    encoder.encode('reason', this.reason);
  }
}
