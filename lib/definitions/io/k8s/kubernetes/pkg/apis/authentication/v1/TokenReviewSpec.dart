import 'package:kubernetes/base.dart';

class TokenReviewSpec extends Codable {
  TokenReviewSpec();

  TokenReviewSpec.empty();

  @override
  void decode(Coder decoder) {
    token = decoder.decode('token');
}

  String token;

  @override
  void encode(Coder encoder) {
    encoder.encode('token', this.token);
  }
}
