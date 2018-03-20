import 'package:kubernetes/definitions/io/k8s/api/core/v1/LoadBalancerIngress.dart';
import 'package:kubernetes/base.dart';

class LoadBalancerStatus extends Codable {
  LoadBalancerStatus();

  LoadBalancerStatus.empty();

  @override
  void decode(Coder decoder) {
    ingress = decoder.decodeObjects('ingress', () => new LoadBalancerIngress.empty());
}

  List<LoadBalancerIngress> ingress;

  @override
  void encode(Coder encoder) {
    encoder.encodeObjects('ingress', this.ingress);
  }
}
