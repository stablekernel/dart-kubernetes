import 'package:kubernetes/definitions/io/k8s/api/extensions/v1beta1/RollingUpdateDaemonSet.dart';
import 'package:kubernetes/base.dart';

class DaemonSetUpdateStrategy extends Codable {
  DaemonSetUpdateStrategy();

  DaemonSetUpdateStrategy.empty();

  @override
  void decode(Coder decoder) {
    rollingUpdate = decoder.decode('rollingUpdate', inflate: () => new RollingUpdateDaemonSet.empty());
    type = decoder.decode('type');
}

  RollingUpdateDaemonSet rollingUpdate;
  String type;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('rollingUpdate', this.rollingUpdate);
    encoder.encode('type', this.type);
  }
}
