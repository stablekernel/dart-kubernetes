import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/api/resource/Quantity.dart';
import 'package:kubernetes/base.dart';

class ResourceRequirements extends Codable {
  ResourceRequirements();

  ResourceRequirements.empty();

  @override
  void decode(Coder decoder) {
    limits = decoder.decodeObjectMap('limits', () => new Quantity.empty());
    requests = decoder.decodeObjectMap('requests', () => new Quantity.empty());
}

  Map<String, Quantity> limits;
  Map<String, Quantity> requests;

  @override
  void encode(Coder encoder) {
    encoder.encodeObjectMap('limits', this.limits);
    encoder.encodeObjectMap('requests', this.requests);
  }
}
