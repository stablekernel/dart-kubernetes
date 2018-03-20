import 'package:kubernetes/definitions/io/k8s/api/networking/v1/NetworkPolicyPort.dart';
import 'package:kubernetes/definitions/io/k8s/api/networking/v1/NetworkPolicyPeer.dart';
import 'package:kubernetes/base.dart';

class NetworkPolicyEgressRule extends Codable {
  NetworkPolicyEgressRule();

  NetworkPolicyEgressRule.empty();

  @override
  void decode(Coder decoder) {
    ports = decoder.decodeObjects('ports', () => new NetworkPolicyPort.empty());
    to = decoder.decodeObjects('to', () => new NetworkPolicyPeer.empty());
}

  List<NetworkPolicyPort> ports;
  List<NetworkPolicyPeer> to;

  @override
  void encode(Coder encoder) {
    encoder.encodeObjects('ports', this.ports);
    encoder.encodeObjects('to', this.to);
  }
}
