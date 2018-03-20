import 'package:kubernetes/base.dart';

class ConfigMapEnvSource extends Codable {
  ConfigMapEnvSource();

  ConfigMapEnvSource.empty();

  @override
  void decode(Coder decoder) {
    name = decoder.decode('name');
    optional = decoder.decode('optional');
}

  String name;
  bool optional;

  @override
  void encode(Coder encoder) {
    encoder.encode('name', this.name);
    encoder.encode('optional', this.optional);
  }
}
