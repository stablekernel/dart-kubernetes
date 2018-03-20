import 'package:kubernetes/base.dart';

class KeyToPath extends Codable {
  KeyToPath(this.key, this.path);

  KeyToPath.empty();

  @override
  void decode(Coder decoder) {
    key = decoder.decode('key');
    mode = decoder.decode('mode');
    path = decoder.decode('path');
}

  String key;
  int mode;
  String path;

  @override
  void encode(Coder encoder) {
    encoder.encode('key', this.key);
    encoder.encode('mode', this.mode);
    encoder.encode('path', this.path);
  }
}
