import 'package:kubernetes/base.dart';

class RawExtension extends Codable {
  RawExtension(this.Raw);

  RawExtension.empty();

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
