import 'package:kubernetes/definitions/io/k8s/api/core/v1/ExecAction.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/HTTPGetAction.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/TCPSocketAction.dart';
import 'package:kubernetes/base.dart';

class Handler extends Codable {
  Handler();

  Handler.empty();

  @override
  void decode(Coder decoder) {
    exec = decoder.decode('exec', inflate: () => new ExecAction.empty());
    httpGet = decoder.decode('httpGet', inflate: () => new HTTPGetAction.empty());
    tcpSocket = decoder.decode('tcpSocket', inflate: () => new TCPSocketAction.empty());
}

  ExecAction exec;
  HTTPGetAction httpGet;
  TCPSocketAction tcpSocket;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('exec', this.exec);
    encoder.encodeObject('httpGet', this.httpGet);
    encoder.encodeObject('tcpSocket', this.tcpSocket);
  }
}
