import 'package:kubernetes/base.dart';

class JSON extends Codable {
  JSON(this.Raw);

  JSON.empty();

  @override
  void decode(Coder decoder) {
    Raw = decoder.decode('Raw');
}

  String Raw;

  @override
  void encode(Coder encoder) {
    encoder.encode('Raw', this.Raw);
  }
}
