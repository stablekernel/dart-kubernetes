import 'package:kubernetes/definitions/io/k8s/api/networking/v1/NetworkPolicyEgressRule.dart';
import 'package:kubernetes/definitions/io/k8s/api/networking/v1/NetworkPolicyIngressRule.dart';
import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/LabelSelector.dart';
import 'package:kubernetes/base.dart';

class NetworkPolicySpec extends Codable {
  NetworkPolicySpec(this.podSelector);

  NetworkPolicySpec.empty();

  @override
  void decode(Coder decoder) {
    egress = decoder.decodeObjects('egress', () => new NetworkPolicyEgressRule.empty());
    ingress = decoder.decodeObjects('ingress', () => new NetworkPolicyIngressRule.empty());
    podSelector = decoder.decode('podSelector', inflate: () => new LabelSelector.empty());
    policyTypes = decoder.decode('policyTypes');
}

  List<NetworkPolicyEgressRule> egress;
  List<NetworkPolicyIngressRule> ingress;
  LabelSelector podSelector;
  List<String> policyTypes;

  @override
  void encode(Coder encoder) {
    encoder.encodeObjects('egress', this.egress);
    encoder.encodeObjects('ingress', this.ingress);
    encoder.encodeObject('podSelector', this.podSelector);
    encoder.encode('policyTypes', this.policyTypes);
  }
}
