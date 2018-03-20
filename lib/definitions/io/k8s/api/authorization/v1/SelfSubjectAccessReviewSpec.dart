import 'package:kubernetes/definitions/io/k8s/api/authorization/v1/NonResourceAttributes.dart';
import 'package:kubernetes/definitions/io/k8s/api/authorization/v1/ResourceAttributes.dart';
import 'package:kubernetes/base.dart';

class SelfSubjectAccessReviewSpec extends Codable {
  SelfSubjectAccessReviewSpec();

  SelfSubjectAccessReviewSpec.empty();

  @override
  void decode(Coder decoder) {
    nonResourceAttributes = decoder.decode('nonResourceAttributes', inflate: () => new NonResourceAttributes.empty());
    resourceAttributes = decoder.decode('resourceAttributes', inflate: () => new ResourceAttributes.empty());
}

  NonResourceAttributes nonResourceAttributes;
  ResourceAttributes resourceAttributes;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('nonResourceAttributes', this.nonResourceAttributes);
    encoder.encodeObject('resourceAttributes', this.resourceAttributes);
  }
}
