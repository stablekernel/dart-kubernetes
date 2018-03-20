import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ObjectMeta.dart';
import 'package:kubernetes/definitions/io/k8s/api/rbac/v1beta1/PolicyRule.dart';
import 'package:kubernetes/base.dart';

class ClusterRole extends Codable {
  ClusterRole(this.rules);

  ClusterRole.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    kind = decoder.decode('kind');
    metadata = decoder.decode('metadata', inflate: () => new ObjectMeta.empty());
    rules = decoder.decodeObjects('rules', () => new PolicyRule.empty());
}

  String apiVersion;
  String kind;
  ObjectMeta metadata;
  List<PolicyRule> rules;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('kind', this.kind);
    encoder.encodeObject('metadata', this.metadata);
    encoder.encodeObjects('rules', this.rules);
  }
}
