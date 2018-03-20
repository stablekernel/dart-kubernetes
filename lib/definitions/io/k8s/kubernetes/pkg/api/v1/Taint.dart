import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/Time.dart';
import 'package:kubernetes/base.dart';

class Taint extends Codable {
  Taint(this.key, this.effect);

  Taint.empty();

  @override
  void decode(Coder decoder) {
    effect = decoder.decode('effect');
    key = decoder.decode('key');
    timeAdded = decoder.decode('timeAdded', inflate: () => new Time.empty());
    value = decoder.decode('value');
}

  String effect;
  String key;
  Time timeAdded;
  String value;

  @override
  void encode(Coder encoder) {
    encoder.encode('effect', this.effect);
    encoder.encode('key', this.key);
    encoder.encodeObject('timeAdded', this.timeAdded);
    encoder.encode('value', this.value);
  }
}
