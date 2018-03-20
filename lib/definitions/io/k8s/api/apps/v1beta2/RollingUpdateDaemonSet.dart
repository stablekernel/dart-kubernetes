import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/util/intstr/IntOrString.dart';
import 'package:kubernetes/base.dart';

class RollingUpdateDaemonSet extends Codable {
  RollingUpdateDaemonSet();

  RollingUpdateDaemonSet.empty();

  @override
  void decode(Coder decoder) {
    maxUnavailable = decoder.decode('maxUnavailable', inflate: () => new IntOrString.empty());
}

  IntOrString maxUnavailable;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('maxUnavailable', this.maxUnavailable);
  }
}
