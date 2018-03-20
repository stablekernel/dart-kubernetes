import 'package:kubernetes/definitions/io/k8s/api/certificates/v1beta1/CertificateSigningRequestCondition.dart';
import 'package:kubernetes/base.dart';

class CertificateSigningRequestStatus extends Codable {
  CertificateSigningRequestStatus();

  CertificateSigningRequestStatus.empty();

  @override
  void decode(Coder decoder) {
    certificate = decoder.decode('certificate');
    conditions = decoder.decodeObjects('conditions', () => new CertificateSigningRequestCondition.empty());
}

  String certificate;
  List<CertificateSigningRequestCondition> conditions;

  @override
  void encode(Coder encoder) {
    encoder.encode('certificate', this.certificate);
    encoder.encodeObjects('conditions', this.conditions);
  }
}
