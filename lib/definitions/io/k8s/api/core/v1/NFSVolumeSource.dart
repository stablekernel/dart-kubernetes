import 'package:kubernetes/base.dart';

class NFSVolumeSource extends Codable {
  NFSVolumeSource(this.server, this.path);

  NFSVolumeSource.empty();

  @override
  void decode(Coder decoder) {
    path = decoder.decode('path');
    readOnly = decoder.decode('readOnly');
    server = decoder.decode('server');
}

  String path;
  bool readOnly;
  String server;

  @override
  void encode(Coder encoder) {
    encoder.encode('path', this.path);
    encoder.encode('readOnly', this.readOnly);
    encoder.encode('server', this.server);
  }
}
