import 'package:kubernetes/definitions/io/k8s/api/core/v1/LimitRangeItem.dart';
import 'package:kubernetes/base.dart';

class LimitRangeSpec extends Codable {
  LimitRangeSpec(this.limits);

  LimitRangeSpec.empty();

  @override
  void decode(Coder decoder) {
    limits = decoder.decodeObjects('limits', () => new LimitRangeItem.empty());
}

  List<LimitRangeItem> limits;

  @override
  void encode(Coder encoder) {
    encoder.encodeObjects('limits', this.limits);
  }
}
