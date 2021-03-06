import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ObjectMeta.dart';
import 'package:kubernetes/definitions/io/k8s/api/policy/v1beta1/PodDisruptionBudgetSpec.dart';
import 'package:kubernetes/definitions/io/k8s/api/policy/v1beta1/PodDisruptionBudgetStatus.dart';
import 'package:kubernetes/base.dart';

class PodDisruptionBudget extends Codable {
  PodDisruptionBudget();

  PodDisruptionBudget.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    kind = decoder.decode('kind');
    metadata = decoder.decode('metadata', inflate: () => new ObjectMeta.empty());
    spec = decoder.decode('spec', inflate: () => new PodDisruptionBudgetSpec.empty());
    status = decoder.decode('status', inflate: () => new PodDisruptionBudgetStatus.empty());
}

  String apiVersion;
  String kind;
  ObjectMeta metadata;
  PodDisruptionBudgetSpec spec;
  PodDisruptionBudgetStatus status;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('kind', this.kind);
    encoder.encodeObject('metadata', this.metadata);
    encoder.encodeObject('spec', this.spec);
    encoder.encodeObject('status', this.status);
  }
}
