import 'package:kubernetes/base.dart';

class LocalVolumeSource extends Codable {
  LocalVolumeSource(this.path);

  LocalVolumeSource.empty();

  @override
  void decode(Coder decoder) {
    path = decoder.decode('path');
}

  String path;

  @override
  void encode(Coder encoder) {
    encoder.encode('path', this.path);
  }
}
