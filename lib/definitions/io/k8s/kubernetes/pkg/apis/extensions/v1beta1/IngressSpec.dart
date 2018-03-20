import 'package:kubernetes/definitions/io/k8s/api/extensions/v1beta1/IngressBackend.dart';
import 'package:kubernetes/definitions/io/k8s/api/extensions/v1beta1/IngressRule.dart';
import 'package:kubernetes/definitions/io/k8s/api/extensions/v1beta1/IngressTLS.dart';
import 'package:kubernetes/base.dart';

class IngressSpec extends Codable {
  IngressSpec();

  IngressSpec.empty();

  @override
  void decode(Coder decoder) {
    backend = decoder.decode('backend', inflate: () => new IngressBackend.empty());
    rules = decoder.decodeObjects('rules', () => new IngressRule.empty());
    tls = decoder.decodeObjects('tls', () => new IngressTLS.empty());
}

  IngressBackend backend;
  List<IngressRule> rules;
  List<IngressTLS> tls;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('backend', this.backend);
    encoder.encodeObjects('rules', this.rules);
    encoder.encodeObjects('tls', this.tls);
  }
}
