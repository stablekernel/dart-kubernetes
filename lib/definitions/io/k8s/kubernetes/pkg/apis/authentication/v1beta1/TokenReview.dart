import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ObjectMeta.dart';
import 'package:kubernetes/definitions/io/k8s/api/authentication/v1beta1/TokenReviewSpec.dart';
import 'package:kubernetes/definitions/io/k8s/api/authentication/v1beta1/TokenReviewStatus.dart';
import 'package:kubernetes/base.dart';

class TokenReview extends Codable {
  TokenReview(this.spec);

  TokenReview.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    kind = decoder.decode('kind');
    metadata = decoder.decode('metadata', inflate: () => new ObjectMeta.empty());
    spec = decoder.decode('spec', inflate: () => new TokenReviewSpec.empty());
    status = decoder.decode('status', inflate: () => new TokenReviewStatus.empty());
}

  String apiVersion;
  String kind;
  ObjectMeta metadata;
  TokenReviewSpec spec;
  TokenReviewStatus status;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('kind', this.kind);
    encoder.encodeObject('metadata', this.metadata);
    encoder.encodeObject('spec', this.spec);
    encoder.encodeObject('status', this.status);
  }
}
