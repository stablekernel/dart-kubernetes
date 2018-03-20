import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/util/intstr/IntOrString.dart';
import 'package:kubernetes/base.dart';

class TCPSocketAction extends Codable {
  TCPSocketAction(this.port);

  TCPSocketAction.empty();

  @override
  void decode(Coder decoder) {
    host = decoder.decode('host');
    port = decoder.decode('port', inflate: () => new IntOrString.empty());
}

  String host;
  IntOrString port;

  @override
  void encode(Coder encoder) {
    encoder.encode('host', this.host);
    encoder.encodeObject('port', this.port);
  }
}
