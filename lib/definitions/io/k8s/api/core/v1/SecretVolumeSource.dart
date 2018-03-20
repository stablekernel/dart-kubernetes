import 'package:kubernetes/definitions/io/k8s/api/core/v1/KeyToPath.dart';
import 'package:kubernetes/base.dart';

class SecretVolumeSource extends Codable {
  SecretVolumeSource();

  SecretVolumeSource.empty();

  @override
  void decode(Coder decoder) {
    defaultMode = decoder.decode('defaultMode');
    items = decoder.decodeObjects('items', () => new KeyToPath.empty());
    optional = decoder.decode('optional');
    secretName = decoder.decode('secretName');
}

  int defaultMode;
  List<KeyToPath> items;
  bool optional;
  String secretName;

  @override
  void encode(Coder encoder) {
    encoder.encode('defaultMode', this.defaultMode);
    encoder.encodeObjects('items', this.items);
    encoder.encode('optional', this.optional);
    encoder.encode('secretName', this.secretName);
  }
}
