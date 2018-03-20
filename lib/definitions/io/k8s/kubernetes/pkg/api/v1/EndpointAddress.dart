import 'package:kubernetes/definitions/io/k8s/api/core/v1/ObjectReference.dart';
import 'package:kubernetes/base.dart';

class EndpointAddress extends Codable {
  EndpointAddress(this.ip);

  EndpointAddress.empty();

  @override
  void decode(Coder decoder) {
    hostname = decoder.decode('hostname');
    ip = decoder.decode('ip');
    nodeName = decoder.decode('nodeName');
    targetRef = decoder.decode('targetRef', inflate: () => new ObjectReference.empty());
}

  String hostname;
  String ip;
  String nodeName;
  ObjectReference targetRef;

  @override
  void encode(Coder encoder) {
    encoder.encode('hostname', this.hostname);
    encoder.encode('ip', this.ip);
    encoder.encode('nodeName', this.nodeName);
    encoder.encodeObject('targetRef', this.targetRef);
  }
}
