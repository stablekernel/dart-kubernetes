import 'package:kubernetes/definitions/io/k8s/api/extensions/v1beta1/HTTPIngressRuleValue.dart';
import 'package:kubernetes/base.dart';

class IngressRule extends Codable {
  IngressRule();

  IngressRule.empty();

  @override
  void decode(Coder decoder) {
    host = decoder.decode('host');
    http = decoder.decode('http', inflate: () => new HTTPIngressRuleValue.empty());
}

  String host;
  HTTPIngressRuleValue http;

  @override
  void encode(Coder encoder) {
    encoder.encode('host', this.host);
    encoder.encodeObject('http', this.http);
  }
}
