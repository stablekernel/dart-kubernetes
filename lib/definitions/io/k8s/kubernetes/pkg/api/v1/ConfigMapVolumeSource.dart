import 'package:kubernetes/definitions/io/k8s/api/core/v1/KeyToPath.dart';
import 'package:kubernetes/base.dart';

class ConfigMapVolumeSource extends Codable {
  ConfigMapVolumeSource();

  ConfigMapVolumeSource.empty();

  @override
  void decode(Coder decoder) {
    defaultMode = decoder.decode('defaultMode');
    items = decoder.decodeObjects('items', () => new KeyToPath.empty());
    name = decoder.decode('name');
    optional = decoder.decode('optional');
}

  int defaultMode;
  List<KeyToPath> items;
  String name;
  bool optional;

  @override
  void encode(Coder encoder) {
    encoder.encode('defaultMode', this.defaultMode);
    encoder.encodeObjects('items', this.items);
    encoder.encode('name', this.name);
    encoder.encode('optional', this.optional);
  }
}
