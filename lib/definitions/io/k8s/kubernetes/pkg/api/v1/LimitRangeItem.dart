import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/api/resource/Quantity.dart';
import 'package:kubernetes/base.dart';

class LimitRangeItem extends Codable {
  LimitRangeItem();

  LimitRangeItem.empty();

  @override
  void decode(Coder decoder) {
    default_ = decoder.decodeObjectMap('default', () => new Quantity.empty());
    defaultRequest = decoder.decodeObjectMap('defaultRequest', () => new Quantity.empty());
    max = decoder.decodeObjectMap('max', () => new Quantity.empty());
    maxLimitRequestRatio = decoder.decodeObjectMap('maxLimitRequestRatio', () => new Quantity.empty());
    min = decoder.decodeObjectMap('min', () => new Quantity.empty());
    type = decoder.decode('type');
}

  Map<String, Quantity> default_;
  Map<String, Quantity> defaultRequest;
  Map<String, Quantity> max;
  Map<String, Quantity> maxLimitRequestRatio;
  Map<String, Quantity> min;
  String type;

  @override
  void encode(Coder encoder) {
    encoder.encodeObjectMap('default', this.default_);
    encoder.encodeObjectMap('defaultRequest', this.defaultRequest);
    encoder.encodeObjectMap('max', this.max);
    encoder.encodeObjectMap('maxLimitRequestRatio', this.maxLimitRequestRatio);
    encoder.encodeObjectMap('min', this.min);
    encoder.encode('type', this.type);
  }
}
