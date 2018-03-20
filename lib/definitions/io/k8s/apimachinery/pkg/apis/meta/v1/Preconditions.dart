import 'package:kubernetes/base.dart';

class Preconditions extends Codable {
  Preconditions();

  Preconditions.empty();

  @override
  void decode(Coder decoder) {
    uid = decoder.decode('uid');
}

  String uid;

  @override
  void encode(Coder encoder) {
    encoder.encode('uid', this.uid);
  }
}
