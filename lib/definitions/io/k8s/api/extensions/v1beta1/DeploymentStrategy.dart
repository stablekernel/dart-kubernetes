import 'package:kubernetes/definitions/io/k8s/api/extensions/v1beta1/RollingUpdateDeployment.dart';
import 'package:kubernetes/base.dart';

class DeploymentStrategy extends Codable {
  DeploymentStrategy();

  DeploymentStrategy.empty();

  @override
  void decode(Coder decoder) {
    rollingUpdate = decoder.decode('rollingUpdate', inflate: () => new RollingUpdateDeployment.empty());
    type = decoder.decode('type');
}

  RollingUpdateDeployment rollingUpdate;
  String type;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('rollingUpdate', this.rollingUpdate);
    encoder.encode('type', this.type);
  }
}
