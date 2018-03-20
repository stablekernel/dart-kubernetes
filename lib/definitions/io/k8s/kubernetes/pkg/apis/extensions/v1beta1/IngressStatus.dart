import 'package:kubernetes/definitions/io/k8s/api/core/v1/LoadBalancerStatus.dart';
import 'package:kubernetes/base.dart';

class IngressStatus extends Codable {
  IngressStatus();

  IngressStatus.empty();

  @override
  void decode(Coder decoder) {
    loadBalancer = decoder.decode('loadBalancer', inflate: () => new LoadBalancerStatus.empty());
}

  LoadBalancerStatus loadBalancer;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('loadBalancer', this.loadBalancer);
  }
}
