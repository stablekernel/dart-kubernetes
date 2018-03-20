import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/Time.dart';
import 'package:kubernetes/base.dart';

class ContainerStateRunning extends Codable {
  ContainerStateRunning();

  ContainerStateRunning.empty();

  @override
  void decode(Coder decoder) {
    startedAt = decoder.decode('startedAt', inflate: () => new Time.empty());
}

  Time startedAt;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('startedAt', this.startedAt);
  }
}
