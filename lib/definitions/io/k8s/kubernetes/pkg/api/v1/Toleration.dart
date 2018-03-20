import 'package:kubernetes/base.dart';

class Toleration extends Codable {
  Toleration();

  Toleration.empty();

  @override
  void decode(Coder decoder) {
    effect = decoder.decode('effect');
    key = decoder.decode('key');
    operator_ = decoder.decode('operator');
    tolerationSeconds = decoder.decode('tolerationSeconds');
    value = decoder.decode('value');
}

  String effect;
  String key;
  String operator_;
  int tolerationSeconds;
  String value;

  @override
  void encode(Coder encoder) {
    encoder.encode('effect', this.effect);
    encoder.encode('key', this.key);
    encoder.encode('operator', this.operator_);
    encoder.encode('tolerationSeconds', this.tolerationSeconds);
    encoder.encode('value', this.value);
  }
}
