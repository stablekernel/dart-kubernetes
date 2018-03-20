import 'package:kubernetes/definitions/io/k8s/api/core/v1/NodeSelectorTerm.dart';
import 'package:kubernetes/base.dart';

class PreferredSchedulingTerm extends Codable {
  PreferredSchedulingTerm(this.weight, this.preference);

  PreferredSchedulingTerm.empty();

  @override
  void decode(Coder decoder) {
    preference = decoder.decode('preference', inflate: () => new NodeSelectorTerm.empty());
    weight = decoder.decode('weight');
}

  NodeSelectorTerm preference;
  int weight;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('preference', this.preference);
    encoder.encode('weight', this.weight);
  }
}
