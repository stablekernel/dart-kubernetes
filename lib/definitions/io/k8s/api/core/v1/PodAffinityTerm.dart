import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/LabelSelector.dart';
import 'package:kubernetes/base.dart';

class PodAffinityTerm extends Codable {
  PodAffinityTerm();

  PodAffinityTerm.empty();

  @override
  void decode(Coder decoder) {
    labelSelector = decoder.decode('labelSelector', inflate: () => new LabelSelector.empty());
    namespaces = decoder.decode('namespaces');
    topologyKey = decoder.decode('topologyKey');
}

  LabelSelector labelSelector;
  List<String> namespaces;
  String topologyKey;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('labelSelector', this.labelSelector);
    encoder.encode('namespaces', this.namespaces);
    encoder.encode('topologyKey', this.topologyKey);
  }
}
