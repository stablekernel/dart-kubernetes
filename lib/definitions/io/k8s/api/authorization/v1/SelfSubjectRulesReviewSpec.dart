import 'package:kubernetes/base.dart';

class SelfSubjectRulesReviewSpec extends Codable {
  SelfSubjectRulesReviewSpec();

  SelfSubjectRulesReviewSpec.empty();

  @override
  void decode(Coder decoder) {
    namespace = decoder.decode('namespace');
}

  String namespace;

  @override
  void encode(Coder encoder) {
    encoder.encode('namespace', this.namespace);
  }
}
