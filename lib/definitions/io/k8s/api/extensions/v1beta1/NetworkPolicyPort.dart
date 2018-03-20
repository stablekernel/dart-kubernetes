import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/util/intstr/IntOrString.dart';
import 'package:kubernetes/base.dart';

class NetworkPolicyPort extends Codable {
  NetworkPolicyPort();

  NetworkPolicyPort.empty();

  @override
  void decode(Coder decoder) {
    port = decoder.decode('port', inflate: () => new IntOrString.empty());
    protocol = decoder.decode('protocol');
}

  IntOrString port;
  String protocol;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('port', this.port);
    encoder.encode('protocol', this.protocol);
  }
}
