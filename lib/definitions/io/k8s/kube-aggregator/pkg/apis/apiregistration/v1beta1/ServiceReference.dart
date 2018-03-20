import 'package:kubernetes/base.dart';

class ServiceReference extends Codable {
  ServiceReference();

  ServiceReference.empty();

  @override
  void decode(Coder decoder) {
    name = decoder.decode('name');
    namespace = decoder.decode('namespace');
}

  String name;
  String namespace;

  @override
  void encode(Coder encoder) {
    encoder.encode('name', this.name);
    encoder.encode('namespace', this.namespace);
  }
}
