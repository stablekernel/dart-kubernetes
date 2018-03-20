import 'package:kubernetes/base.dart';

class ScaleStatus extends Codable {
  ScaleStatus(this.replicas);

  ScaleStatus.empty();

  @override
  void decode(Coder decoder) {
    replicas = decoder.decode('replicas');
    selector = decoder.decode('selector');
}

  int replicas;
  String selector;

  @override
  void encode(Coder encoder) {
    encoder.encode('replicas', this.replicas);
    encoder.encode('selector', this.selector);
  }
}
