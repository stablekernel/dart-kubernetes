import 'package:kubernetes/base.dart';

class ServerAddressByClientCIDR extends Codable {
  ServerAddressByClientCIDR(this.clientCIDR, this.serverAddress);

  ServerAddressByClientCIDR.empty();

  @override
  void decode(Coder decoder) {
    clientCIDR = decoder.decode('clientCIDR');
    serverAddress = decoder.decode('serverAddress');
}

  String clientCIDR;
  String serverAddress;

  @override
  void encode(Coder encoder) {
    encoder.encode('clientCIDR', this.clientCIDR);
    encoder.encode('serverAddress', this.serverAddress);
  }
}
