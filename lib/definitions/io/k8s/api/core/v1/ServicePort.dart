import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/util/intstr/IntOrString.dart';
import 'package:kubernetes/base.dart';

class ServicePort extends Codable {
  ServicePort(this.port);

  ServicePort.empty();

  @override
  void decode(Coder decoder) {
    name = decoder.decode('name');
    nodePort = decoder.decode('nodePort');
    port = decoder.decode('port');
    protocol = decoder.decode('protocol');
    targetPort = decoder.decode('targetPort', inflate: () => new IntOrString.empty());
}

  String name;
  int nodePort;
  int port;
  String protocol;
  IntOrString targetPort;

  @override
  void encode(Coder encoder) {
    encoder.encode('name', this.name);
    encoder.encode('nodePort', this.nodePort);
    encoder.encode('port', this.port);
    encoder.encode('protocol', this.protocol);
    encoder.encodeObject('targetPort', this.targetPort);
  }
}
