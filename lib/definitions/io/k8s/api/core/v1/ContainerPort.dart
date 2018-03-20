import 'package:kubernetes/base.dart';

class ContainerPort extends Codable {
  ContainerPort(this.containerPort);

  ContainerPort.empty();

  @override
  void decode(Coder decoder) {
    containerPort = decoder.decode('containerPort');
    hostIP = decoder.decode('hostIP');
    hostPort = decoder.decode('hostPort');
    name = decoder.decode('name');
    protocol = decoder.decode('protocol');
}

  int containerPort;
  String hostIP;
  int hostPort;
  String name;
  String protocol;

  @override
  void encode(Coder encoder) {
    encoder.encode('containerPort', this.containerPort);
    encoder.encode('hostIP', this.hostIP);
    encoder.encode('hostPort', this.hostPort);
    encoder.encode('name', this.name);
    encoder.encode('protocol', this.protocol);
  }
}
