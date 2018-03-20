import 'package:kubernetes/base.dart';

class GlusterfsVolumeSource extends Codable {
  GlusterfsVolumeSource(this.endpoints, this.path);

  GlusterfsVolumeSource.empty();

  @override
  void decode(Coder decoder) {
    endpoints = decoder.decode('endpoints');
    path = decoder.decode('path');
    readOnly = decoder.decode('readOnly');
}

  String endpoints;
  String path;
  bool readOnly;

  @override
  void encode(Coder encoder) {
    encoder.encode('endpoints', this.endpoints);
    encoder.encode('path', this.path);
    encoder.encode('readOnly', this.readOnly);
  }
}
