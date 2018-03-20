import 'package:kubernetes/base.dart';

class SubjectAccessReviewStatus extends Codable {
  SubjectAccessReviewStatus(this.allowed);

  SubjectAccessReviewStatus.empty();

  @override
  void decode(Coder decoder) {
    allowed = decoder.decode('allowed');
    evaluationError = decoder.decode('evaluationError');
    reason = decoder.decode('reason');
}

  bool allowed;
  String evaluationError;
  String reason;

  @override
  void encode(Coder encoder) {
    encoder.encode('allowed', this.allowed);
    encoder.encode('evaluationError', this.evaluationError);
    encoder.encode('reason', this.reason);
  }
}
