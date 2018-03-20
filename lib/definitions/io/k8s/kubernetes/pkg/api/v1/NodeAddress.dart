import 'package:kubernetes/base.dart';

class NodeAddress extends Codable {
  NodeAddress(this.type, this.address);

  NodeAddress.empty();

  @override
  void decode(Coder decoder) {
    address = decoder.decode('address');
    type = decoder.decode('type');
}

  String address;
  String type;

  @override
  void encode(Coder encoder) {
    encoder.encode('address', this.address);
    encoder.encode('type', this.type);
  }
}
