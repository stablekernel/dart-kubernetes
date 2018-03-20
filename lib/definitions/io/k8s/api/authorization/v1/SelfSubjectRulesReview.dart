import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ObjectMeta.dart';
import 'package:kubernetes/definitions/io/k8s/api/authorization/v1/SelfSubjectRulesReviewSpec.dart';
import 'package:kubernetes/definitions/io/k8s/api/authorization/v1/SubjectRulesReviewStatus.dart';
import 'package:kubernetes/base.dart';

class SelfSubjectRulesReview extends Codable {
  SelfSubjectRulesReview(this.spec);

  SelfSubjectRulesReview.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    kind = decoder.decode('kind');
    metadata = decoder.decode('metadata', inflate: () => new ObjectMeta.empty());
    spec = decoder.decode('spec', inflate: () => new SelfSubjectRulesReviewSpec.empty());
    status = decoder.decode('status', inflate: () => new SubjectRulesReviewStatus.empty());
}

  String apiVersion;
  String kind;
  ObjectMeta metadata;
  SelfSubjectRulesReviewSpec spec;
  SubjectRulesReviewStatus status;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('kind', this.kind);
    encoder.encodeObject('metadata', this.metadata);
    encoder.encodeObject('spec', this.spec);
    encoder.encodeObject('status', this.status);
  }
}
