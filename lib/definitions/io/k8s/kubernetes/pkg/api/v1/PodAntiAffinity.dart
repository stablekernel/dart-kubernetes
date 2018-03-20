import 'package:kubernetes/definitions/io/k8s/api/core/v1/WeightedPodAffinityTerm.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/PodAffinityTerm.dart';
import 'package:kubernetes/base.dart';

class PodAntiAffinity extends Codable {
  PodAntiAffinity();

  PodAntiAffinity.empty();

  @override
  void decode(Coder decoder) {
    preferredDuringSchedulingIgnoredDuringExecution = decoder.decodeObjects('preferredDuringSchedulingIgnoredDuringExecution', () => new WeightedPodAffinityTerm.empty());
    requiredDuringSchedulingIgnoredDuringExecution = decoder.decodeObjects('requiredDuringSchedulingIgnoredDuringExecution', () => new PodAffinityTerm.empty());
}

  List<WeightedPodAffinityTerm> preferredDuringSchedulingIgnoredDuringExecution;
  List<PodAffinityTerm> requiredDuringSchedulingIgnoredDuringExecution;

  @override
  void encode(Coder encoder) {
    encoder.encodeObjects('preferredDuringSchedulingIgnoredDuringExecution', this.preferredDuringSchedulingIgnoredDuringExecution);
    encoder.encodeObjects('requiredDuringSchedulingIgnoredDuringExecution', this.requiredDuringSchedulingIgnoredDuringExecution);
  }
}
