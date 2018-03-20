import 'package:kubernetes/definitions/io/k8s/api/core/v1/KeyToPath.dart';
import 'package:kubernetes/base.dart';

class SecretProjection extends Codable {
  SecretProjection();

  SecretProjection.empty();

  @override
  void decode(Coder decoder) {
    items = decoder.decodeObjects('items', () => new KeyToPath.empty());
    name = decoder.decode('name');
    optional = decoder.decode('optional');
}

  List<KeyToPath> items;
  String name;
  bool optional;

  @override
  void encode(Coder encoder) {
    encoder.encodeObjects('items', this.items);
    encoder.encode('name', this.name);
    encoder.encode('optional', this.optional);
  }
}
