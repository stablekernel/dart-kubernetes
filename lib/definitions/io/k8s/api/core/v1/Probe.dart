import 'package:kubernetes/definitions/io/k8s/api/core/v1/ExecAction.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/HTTPGetAction.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/TCPSocketAction.dart';
import 'package:kubernetes/base.dart';

class Probe extends Codable {
  Probe();

  Probe.empty();

  @override
  void decode(Coder decoder) {
    exec = decoder.decode('exec', inflate: () => new ExecAction.empty());
    failureThreshold = decoder.decode('failureThreshold');
    httpGet = decoder.decode('httpGet', inflate: () => new HTTPGetAction.empty());
    initialDelaySeconds = decoder.decode('initialDelaySeconds');
    periodSeconds = decoder.decode('periodSeconds');
    successThreshold = decoder.decode('successThreshold');
    tcpSocket = decoder.decode('tcpSocket', inflate: () => new TCPSocketAction.empty());
    timeoutSeconds = decoder.decode('timeoutSeconds');
}

  ExecAction exec;
  int failureThreshold;
  HTTPGetAction httpGet;
  int initialDelaySeconds;
  int periodSeconds;
  int successThreshold;
  TCPSocketAction tcpSocket;
  int timeoutSeconds;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('exec', this.exec);
    encoder.encode('failureThreshold', this.failureThreshold);
    encoder.encodeObject('httpGet', this.httpGet);
    encoder.encode('initialDelaySeconds', this.initialDelaySeconds);
    encoder.encode('periodSeconds', this.periodSeconds);
    encoder.encode('successThreshold', this.successThreshold);
    encoder.encodeObject('tcpSocket', this.tcpSocket);
    encoder.encode('timeoutSeconds', this.timeoutSeconds);
  }
}
