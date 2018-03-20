import 'package:kubernetes/base.dart';

class SecretKeySelector extends Codable {
  SecretKeySelector(this.key);

  SecretKeySelector.empty();

  @override
  void decode(Coder decoder) {
    key = decoder.decode('key');
    name = decoder.decode('name');
    optional = decoder.decode('optional');
}

  String key;
  String name;
  bool optional;

  @override
  void encode(Coder encoder) {
    encoder.encode('key', this.key);
    encoder.encode('name', this.name);
    encoder.encode('optional', this.optional);
  }
}
