import 'package:kubernetes/base.dart';

class HostPathVolumeSource extends Codable {
  HostPathVolumeSource(this.path);

  HostPathVolumeSource.empty();

  @override
  void decode(Coder decoder) {
    path = decoder.decode('path');
    type = decoder.decode('type');
}

  String path;
  String type;

  @override
  void encode(Coder encoder) {
    encoder.encode('path', this.path);
    encoder.encode('type', this.type);
  }
}
