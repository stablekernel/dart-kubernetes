import 'package:kubernetes/base.dart';

class LocalObjectReference extends Codable {
  LocalObjectReference();

  LocalObjectReference.empty();

  @override
  void decode(Coder decoder) {
    name = decoder.decode('name');
}

  String name;

  @override
  void encode(Coder encoder) {
    encoder.encode('name', this.name);
  }
}
