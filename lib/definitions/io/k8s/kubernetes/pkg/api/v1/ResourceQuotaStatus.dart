import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/api/resource/Quantity.dart';
import 'package:kubernetes/base.dart';

class ResourceQuotaStatus extends Codable {
  ResourceQuotaStatus();

  ResourceQuotaStatus.empty();

  @override
  void decode(Coder decoder) {
    hard = decoder.decodeObjectMap('hard', () => new Quantity.empty());
    used = decoder.decodeObjectMap('used', () => new Quantity.empty());
}

  Map<String, Quantity> hard;
  Map<String, Quantity> used;

  @override
  void encode(Coder encoder) {
    encoder.encodeObjectMap('hard', this.hard);
    encoder.encodeObjectMap('used', this.used);
  }
}
