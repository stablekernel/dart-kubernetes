import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/util/intstr/IntOrString.dart';
import 'package:kubernetes/base.dart';

class IngressBackend extends Codable {
  IngressBackend(this.serviceName, this.servicePort);

  IngressBackend.empty();

  @override
  void decode(Coder decoder) {
    serviceName = decoder.decode('serviceName');
    servicePort = decoder.decode('servicePort', inflate: () => new IntOrString.empty());
}

  String serviceName;
  IntOrString servicePort;

  @override
  void encode(Coder encoder) {
    encoder.encode('serviceName', this.serviceName);
    encoder.encodeObject('servicePort', this.servicePort);
  }
}
