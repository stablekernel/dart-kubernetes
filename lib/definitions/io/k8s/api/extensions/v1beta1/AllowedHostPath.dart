import 'package:kubernetes/base.dart';

class AllowedHostPath extends Codable {
  AllowedHostPath();

  AllowedHostPath.empty();

  @override
  void decode(Coder decoder) {
    pathPrefix = decoder.decode('pathPrefix');
}

  String pathPrefix;

  @override
  void encode(Coder encoder) {
    encoder.encode('pathPrefix', this.pathPrefix);
  }
}
