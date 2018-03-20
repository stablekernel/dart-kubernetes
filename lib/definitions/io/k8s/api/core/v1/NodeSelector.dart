import 'package:kubernetes/definitions/io/k8s/api/core/v1/NodeSelectorTerm.dart';
import 'package:kubernetes/base.dart';

class NodeSelector extends Codable {
  NodeSelector(this.nodeSelectorTerms);

  NodeSelector.empty();

  @override
  void decode(Coder decoder) {
    nodeSelectorTerms = decoder.decodeObjects('nodeSelectorTerms', () => new NodeSelectorTerm.empty());
}

  List<NodeSelectorTerm> nodeSelectorTerms;

  @override
  void encode(Coder encoder) {
    encoder.encodeObjects('nodeSelectorTerms', this.nodeSelectorTerms);
  }
}
