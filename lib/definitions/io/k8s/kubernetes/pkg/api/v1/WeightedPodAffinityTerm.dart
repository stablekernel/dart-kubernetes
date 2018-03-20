import 'package:kubernetes/definitions/io/k8s/api/core/v1/PodAffinityTerm.dart';
import 'package:kubernetes/base.dart';

class WeightedPodAffinityTerm extends Codable {
  WeightedPodAffinityTerm(this.weight, this.podAffinityTerm);

  WeightedPodAffinityTerm.empty();

  @override
  void decode(Coder decoder) {
    podAffinityTerm = decoder.decode('podAffinityTerm', inflate: () => new PodAffinityTerm.empty());
    weight = decoder.decode('weight');
}

  PodAffinityTerm podAffinityTerm;
  int weight;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('podAffinityTerm', this.podAffinityTerm);
    encoder.encode('weight', this.weight);
  }
}
