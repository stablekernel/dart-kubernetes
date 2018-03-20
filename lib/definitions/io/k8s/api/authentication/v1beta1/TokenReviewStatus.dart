import 'package:kubernetes/definitions/io/k8s/api/authentication/v1beta1/UserInfo.dart';
import 'package:kubernetes/base.dart';

class TokenReviewStatus extends Codable {
  TokenReviewStatus();

  TokenReviewStatus.empty();

  @override
  void decode(Coder decoder) {
    authenticated = decoder.decode('authenticated');
    error = decoder.decode('error');
    user = decoder.decode('user', inflate: () => new UserInfo.empty());
}

  bool authenticated;
  String error;
  UserInfo user;

  @override
  void encode(Coder encoder) {
    encoder.encode('authenticated', this.authenticated);
    encoder.encode('error', this.error);
    encoder.encodeObject('user', this.user);
  }
}
