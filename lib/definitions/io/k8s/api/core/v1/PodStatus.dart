import 'package:kubernetes/definitions/io/k8s/api/core/v1/PodCondition.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/ContainerStatus.dart';
import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/Time.dart';
import 'package:kubernetes/base.dart';

class PodStatus extends Codable {
  PodStatus();

  PodStatus.empty();

  @override
  void decode(Coder decoder) {
    conditions = decoder.decodeObjects('conditions', () => new PodCondition.empty());
    containerStatuses = decoder.decodeObjects('containerStatuses', () => new ContainerStatus.empty());
    hostIP = decoder.decode('hostIP');
    initContainerStatuses = decoder.decodeObjects('initContainerStatuses', () => new ContainerStatus.empty());
    message = decoder.decode('message');
    phase = decoder.decode('phase');
    podIP = decoder.decode('podIP');
    qosClass = decoder.decode('qosClass');
    reason = decoder.decode('reason');
    startTime = decoder.decode('startTime', inflate: () => new Time.empty());
}

  List<PodCondition> conditions;
  List<ContainerStatus> containerStatuses;
  String hostIP;
  List<ContainerStatus> initContainerStatuses;
  String message;
  String phase;
  String podIP;
  String qosClass;
  String reason;
  Time startTime;

  @override
  void encode(Coder encoder) {
    encoder.encodeObjects('conditions', this.conditions);
    encoder.encodeObjects('containerStatuses', this.containerStatuses);
    encoder.encode('hostIP', this.hostIP);
    encoder.encodeObjects('initContainerStatuses', this.initContainerStatuses);
    encoder.encode('message', this.message);
    encoder.encode('phase', this.phase);
    encoder.encode('podIP', this.podIP);
    encoder.encode('qosClass', this.qosClass);
    encoder.encode('reason', this.reason);
    encoder.encodeObject('startTime', this.startTime);
  }
}
