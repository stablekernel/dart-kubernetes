import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/Time.dart';
import 'package:kubernetes/base.dart';

class CertificateSigningRequestCondition extends Codable {
  CertificateSigningRequestCondition(this.type);

  CertificateSigningRequestCondition.empty();

  @override
  void decode(Coder decoder) {
    lastUpdateTime = decoder.decode('lastUpdateTime', inflate: () => new Time.empty());
    message = decoder.decode('message');
    reason = decoder.decode('reason');
    type = decoder.decode('type');
}

  Time lastUpdateTime;
  String message;
  String reason;
  String type;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('lastUpdateTime', this.lastUpdateTime);
    encoder.encode('message', this.message);
    encoder.encode('reason', this.reason);
    encoder.encode('type', this.type);
  }
}
