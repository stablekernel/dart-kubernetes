import 'package:kubernetes/base.dart';

class QuobyteVolumeSource extends Codable {
  QuobyteVolumeSource(this.registry, this.volume);

  QuobyteVolumeSource.empty();

  @override
  void decode(Coder decoder) {
    group = decoder.decode('group');
    readOnly = decoder.decode('readOnly');
    registry = decoder.decode('registry');
    user = decoder.decode('user');
    volume = decoder.decode('volume');
}

  String group;
  bool readOnly;
  String registry;
  String user;
  String volume;

  @override
  void encode(Coder encoder) {
    encoder.encode('group', this.group);
    encoder.encode('readOnly', this.readOnly);
    encoder.encode('registry', this.registry);
    encoder.encode('user', this.user);
    encoder.encode('volume', this.volume);
  }
}
