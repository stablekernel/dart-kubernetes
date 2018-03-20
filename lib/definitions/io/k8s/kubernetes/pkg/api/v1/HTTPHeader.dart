import 'package:kubernetes/base.dart';

class HTTPHeader extends Codable {
  HTTPHeader(this.name, this.value);

  HTTPHeader.empty();

  @override
  void decode(Coder decoder) {
    name = decoder.decode('name');
    value = decoder.decode('value');
}

  String name;
  String value;

  @override
  void encode(Coder encoder) {
    encoder.encode('name', this.name);
    encoder.encode('value', this.value);
  }
}
