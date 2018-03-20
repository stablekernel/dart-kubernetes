import 'package:kubernetes/base.dart';

class ScaleStatus extends Codable {
  ScaleStatus(this.replicas);

  ScaleStatus.empty();

  @override
  void decode(Coder decoder) {
    replicas = decoder.decode('replicas');
    selector = decoder.decode('selector');
    targetSelector = decoder.decode('targetSelector');
}

  int replicas;
  Map<String, String> selector;
  String targetSelector;

  @override
  void encode(Coder encoder) {
    encoder.encode('replicas', this.replicas);
    encoder.encode('selector', this.selector);
    encoder.encode('targetSelector', this.targetSelector);
  }
}
