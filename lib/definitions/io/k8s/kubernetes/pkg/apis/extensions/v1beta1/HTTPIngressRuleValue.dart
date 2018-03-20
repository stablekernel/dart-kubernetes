import 'package:kubernetes/definitions/io/k8s/api/extensions/v1beta1/HTTPIngressPath.dart';
import 'package:kubernetes/base.dart';

class HTTPIngressRuleValue extends Codable {
  HTTPIngressRuleValue(this.paths);

  HTTPIngressRuleValue.empty();

  @override
  void decode(Coder decoder) {
    paths = decoder.decodeObjects('paths', () => new HTTPIngressPath.empty());
}

  List<HTTPIngressPath> paths;

  @override
  void encode(Coder encoder) {
    encoder.encodeObjects('paths', this.paths);
  }
}
