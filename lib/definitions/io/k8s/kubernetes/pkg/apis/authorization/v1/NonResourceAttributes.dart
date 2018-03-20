import 'package:kubernetes/base.dart';

class NonResourceAttributes extends Codable {
  NonResourceAttributes();

  NonResourceAttributes.empty();

  @override
  void decode(Coder decoder) {
    path = decoder.decode('path');
    verb = decoder.decode('verb');
}

  String path;
  String verb;

  @override
  void encode(Coder encoder) {
    encoder.encode('path', this.path);
    encoder.encode('verb', this.verb);
  }
}
