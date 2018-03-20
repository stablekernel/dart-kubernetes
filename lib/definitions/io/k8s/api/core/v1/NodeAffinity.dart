import 'package:kubernetes/definitions/io/k8s/api/core/v1/PreferredSchedulingTerm.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/NodeSelector.dart';
import 'package:kubernetes/base.dart';

class NodeAffinity extends Codable {
  NodeAffinity();

  NodeAffinity.empty();

  @override
  void decode(Coder decoder) {
    preferredDuringSchedulingIgnoredDuringExecution = decoder.decodeObjects('preferredDuringSchedulingIgnoredDuringExecution', () => new PreferredSchedulingTerm.empty());
    requiredDuringSchedulingIgnoredDuringExecution = decoder.decode('requiredDuringSchedulingIgnoredDuringExecution', inflate: () => new NodeSelector.empty());
}

  List<PreferredSchedulingTerm> preferredDuringSchedulingIgnoredDuringExecution;
  NodeSelector requiredDuringSchedulingIgnoredDuringExecution;

  @override
  void encode(Coder encoder) {
    encoder.encodeObjects('preferredDuringSchedulingIgnoredDuringExecution', this.preferredDuringSchedulingIgnoredDuringExecution);
    encoder.encodeObject('requiredDuringSchedulingIgnoredDuringExecution', this.requiredDuringSchedulingIgnoredDuringExecution);
  }
}
