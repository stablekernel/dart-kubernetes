import 'package:kubernetes/definitions/io/k8s/api/core/v1/NodeSelectorRequirement.dart';
import 'package:kubernetes/base.dart';

class NodeSelectorTerm extends Codable {
  NodeSelectorTerm(this.matchExpressions);

  NodeSelectorTerm.empty();

  @override
  void decode(Coder decoder) {
    matchExpressions = decoder.decodeObjects('matchExpressions', () => new NodeSelectorRequirement.empty());
}

  List<NodeSelectorRequirement> matchExpressions;

  @override
  void encode(Coder encoder) {
    encoder.encodeObjects('matchExpressions', this.matchExpressions);
  }
}
