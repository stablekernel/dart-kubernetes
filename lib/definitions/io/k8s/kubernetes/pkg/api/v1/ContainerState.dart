import 'package:kubernetes/definitions/io/k8s/api/core/v1/ContainerStateRunning.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/ContainerStateTerminated.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/ContainerStateWaiting.dart';
import 'package:kubernetes/base.dart';

class ContainerState extends Codable {
  ContainerState();

  ContainerState.empty();

  @override
  void decode(Coder decoder) {
    running = decoder.decode('running', inflate: () => new ContainerStateRunning.empty());
    terminated = decoder.decode('terminated', inflate: () => new ContainerStateTerminated.empty());
    waiting = decoder.decode('waiting', inflate: () => new ContainerStateWaiting.empty());
}

  ContainerStateRunning running;
  ContainerStateTerminated terminated;
  ContainerStateWaiting waiting;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('running', this.running);
    encoder.encodeObject('terminated', this.terminated);
    encoder.encodeObject('waiting', this.waiting);
  }
}
