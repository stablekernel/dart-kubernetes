import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/util/intstr/IntOrString.dart';
import 'package:kubernetes/base.dart';

class RollingUpdateDeployment extends Codable {
  RollingUpdateDeployment();

  RollingUpdateDeployment.empty();

  @override
  void decode(Coder decoder) {
    maxSurge = decoder.decode('maxSurge', inflate: () => new IntOrString.empty());
    maxUnavailable = decoder.decode('maxUnavailable', inflate: () => new IntOrString.empty());
}

  IntOrString maxSurge;
  IntOrString maxUnavailable;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('maxSurge', this.maxSurge);
    encoder.encodeObject('maxUnavailable', this.maxUnavailable);
  }
}
