import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ObjectMeta.dart';
import 'package:kubernetes/definitions/io/k8s/api/certificates/v1beta1/CertificateSigningRequestSpec.dart';
import 'package:kubernetes/definitions/io/k8s/api/certificates/v1beta1/CertificateSigningRequestStatus.dart';
import 'package:kubernetes/base.dart';

class CertificateSigningRequest extends Codable {
  CertificateSigningRequest();

  CertificateSigningRequest.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    kind = decoder.decode('kind');
    metadata = decoder.decode('metadata', inflate: () => new ObjectMeta.empty());
    spec = decoder.decode('spec', inflate: () => new CertificateSigningRequestSpec.empty());
    status = decoder.decode('status', inflate: () => new CertificateSigningRequestStatus.empty());
}

  String apiVersion;
  String kind;
  ObjectMeta metadata;
  CertificateSigningRequestSpec spec;
  CertificateSigningRequestStatus status;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('kind', this.kind);
    encoder.encodeObject('metadata', this.metadata);
    encoder.encodeObject('spec', this.spec);
    encoder.encodeObject('status', this.status);
  }
}
