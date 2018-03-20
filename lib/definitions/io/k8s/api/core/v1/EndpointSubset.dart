import 'package:kubernetes/definitions/io/k8s/api/core/v1/EndpointAddress.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/EndpointPort.dart';
import 'package:kubernetes/base.dart';

class EndpointSubset extends Codable {
  EndpointSubset();

  EndpointSubset.empty();

  @override
  void decode(Coder decoder) {
    addresses = decoder.decodeObjects('addresses', () => new EndpointAddress.empty());
    notReadyAddresses = decoder.decodeObjects('notReadyAddresses', () => new EndpointAddress.empty());
    ports = decoder.decodeObjects('ports', () => new EndpointPort.empty());
}

  List<EndpointAddress> addresses;
  List<EndpointAddress> notReadyAddresses;
  List<EndpointPort> ports;

  @override
  void encode(Coder encoder) {
    encoder.encodeObjects('addresses', this.addresses);
    encoder.encodeObjects('notReadyAddresses', this.notReadyAddresses);
    encoder.encodeObjects('ports', this.ports);
  }
}
