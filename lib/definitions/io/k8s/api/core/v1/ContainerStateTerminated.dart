import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/Time.dart';
import 'package:kubernetes/base.dart';

class ContainerStateTerminated extends Codable {
  ContainerStateTerminated(this.exitCode);

  ContainerStateTerminated.empty();

  @override
  void decode(Coder decoder) {
    containerID = decoder.decode('containerID');
    exitCode = decoder.decode('exitCode');
    finishedAt = decoder.decode('finishedAt', inflate: () => new Time.empty());
    message = decoder.decode('message');
    reason = decoder.decode('reason');
    signal = decoder.decode('signal');
    startedAt = decoder.decode('startedAt', inflate: () => new Time.empty());
}

  String containerID;
  int exitCode;
  Time finishedAt;
  String message;
  String reason;
  int signal;
  Time startedAt;

  @override
  void encode(Coder encoder) {
    encoder.encode('containerID', this.containerID);
    encoder.encode('exitCode', this.exitCode);
    encoder.encodeObject('finishedAt', this.finishedAt);
    encoder.encode('message', this.message);
    encoder.encode('reason', this.reason);
    encoder.encode('signal', this.signal);
    encoder.encodeObject('startedAt', this.startedAt);
  }
}
