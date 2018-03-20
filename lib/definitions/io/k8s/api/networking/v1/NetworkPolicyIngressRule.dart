import 'package:kubernetes/definitions/io/k8s/api/networking/v1/NetworkPolicyPeer.dart';
import 'package:kubernetes/definitions/io/k8s/api/networking/v1/NetworkPolicyPort.dart';
import 'package:kubernetes/base.dart';

class NetworkPolicyIngressRule extends Codable {
  NetworkPolicyIngressRule();

  NetworkPolicyIngressRule.empty();

  @override
  void decode(Coder decoder) {
    from = decoder.decodeObjects('from', () => new NetworkPolicyPeer.empty());
    ports = decoder.decodeObjects('ports', () => new NetworkPolicyPort.empty());
}

  List<NetworkPolicyPeer> from;
  List<NetworkPolicyPort> ports;

  @override
  void encode(Coder encoder) {
    encoder.encodeObjects('from', this.from);
    encoder.encodeObjects('ports', this.ports);
  }
}
