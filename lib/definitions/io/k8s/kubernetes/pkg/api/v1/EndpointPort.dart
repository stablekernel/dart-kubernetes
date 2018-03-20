import 'package:kubernetes/base.dart';

class EndpointPort extends Codable {
  EndpointPort(this.port);

  EndpointPort.empty();

  @override
  void decode(Coder decoder) {
    name = decoder.decode('name');
    port = decoder.decode('port');
    protocol = decoder.decode('protocol');
}

  String name;
  int port;
  String protocol;

  @override
  void encode(Coder encoder) {
    encoder.encode('name', this.name);
    encoder.encode('port', this.port);
    encoder.encode('protocol', this.protocol);
  }
}
