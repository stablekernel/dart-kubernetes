import 'package:kubernetes/base.dart';

class ScaleSpec extends Codable {
  ScaleSpec();

  ScaleSpec.empty();

  @override
  void decode(Coder decoder) {
    replicas = decoder.decode('replicas');
}

  int replicas;

  @override
  void encode(Coder encoder) {
    encoder.encode('replicas', this.replicas);
  }
}
