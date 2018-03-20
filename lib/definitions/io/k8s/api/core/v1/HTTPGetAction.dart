import 'package:kubernetes/definitions/io/k8s/api/core/v1/HTTPHeader.dart';
import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/util/intstr/IntOrString.dart';
import 'package:kubernetes/base.dart';

class HTTPGetAction extends Codable {
  HTTPGetAction(this.port);

  HTTPGetAction.empty();

  @override
  void decode(Coder decoder) {
    host = decoder.decode('host');
    httpHeaders = decoder.decodeObjects('httpHeaders', () => new HTTPHeader.empty());
    path = decoder.decode('path');
    port = decoder.decode('port', inflate: () => new IntOrString.empty());
    scheme = decoder.decode('scheme');
}

  String host;
  List<HTTPHeader> httpHeaders;
  String path;
  IntOrString port;
  String scheme;

  @override
  void encode(Coder encoder) {
    encoder.encode('host', this.host);
    encoder.encodeObjects('httpHeaders', this.httpHeaders);
    encoder.encode('path', this.path);
    encoder.encodeObject('port', this.port);
    encoder.encode('scheme', this.scheme);
  }
}
