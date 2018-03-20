import 'package:kubernetes/definitions/io/k8s/api/extensions/v1beta1/IngressBackend.dart';
import 'package:kubernetes/base.dart';

class HTTPIngressPath extends Codable {
  HTTPIngressPath(this.backend);

  HTTPIngressPath.empty();

  @override
  void decode(Coder decoder) {
    backend = decoder.decode('backend', inflate: () => new IngressBackend.empty());
    path = decoder.decode('path');
}

  IngressBackend backend;
  String path;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('backend', this.backend);
    encoder.encode('path', this.path);
  }
}
