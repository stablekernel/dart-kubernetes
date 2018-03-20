import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ObjectMeta.dart';
import 'package:kubernetes/definitions/io/k8s/api/authorization/v1/SubjectAccessReviewSpec.dart';
import 'package:kubernetes/definitions/io/k8s/api/authorization/v1/SubjectAccessReviewStatus.dart';
import 'package:kubernetes/base.dart';

class LocalSubjectAccessReview extends Codable {
  LocalSubjectAccessReview(this.spec);

  LocalSubjectAccessReview.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    kind = decoder.decode('kind');
    metadata = decoder.decode('metadata', inflate: () => new ObjectMeta.empty());
    spec = decoder.decode('spec', inflate: () => new SubjectAccessReviewSpec.empty());
    status = decoder.decode('status', inflate: () => new SubjectAccessReviewStatus.empty());
}

  String apiVersion;
  String kind;
  ObjectMeta metadata;
  SubjectAccessReviewSpec spec;
  SubjectAccessReviewStatus status;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('kind', this.kind);
    encoder.encodeObject('metadata', this.metadata);
    encoder.encodeObject('spec', this.spec);
    encoder.encodeObject('status', this.status);
  }
}
