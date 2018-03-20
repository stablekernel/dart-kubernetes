import 'package:kubernetes/definitions/io/k8s/api/core/v1/NodeAffinity.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/PodAffinity.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/PodAntiAffinity.dart';
import 'package:kubernetes/base.dart';

class Affinity extends Codable {
  Affinity();

  Affinity.empty();

  @override
  void decode(Coder decoder) {
    nodeAffinity = decoder.decode('nodeAffinity', inflate: () => new NodeAffinity.empty());
    podAffinity = decoder.decode('podAffinity', inflate: () => new PodAffinity.empty());
    podAntiAffinity = decoder.decode('podAntiAffinity', inflate: () => new PodAntiAffinity.empty());
}

  NodeAffinity nodeAffinity;
  PodAffinity podAffinity;
  PodAntiAffinity podAntiAffinity;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('nodeAffinity', this.nodeAffinity);
    encoder.encodeObject('podAffinity', this.podAffinity);
    encoder.encodeObject('podAntiAffinity', this.podAntiAffinity);
  }
}
