import 'package:kubernetes/definitions/io/k8s/api/apps/v1beta1/RollingUpdateStatefulSetStrategy.dart';
import 'package:kubernetes/base.dart';

class StatefulSetUpdateStrategy extends Codable {
  StatefulSetUpdateStrategy();

  StatefulSetUpdateStrategy.empty();

  @override
  void decode(Coder decoder) {
    rollingUpdate = decoder.decode('rollingUpdate', inflate: () => new RollingUpdateStatefulSetStrategy.empty());
    type = decoder.decode('type');
}

  RollingUpdateStatefulSetStrategy rollingUpdate;
  String type;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('rollingUpdate', this.rollingUpdate);
    encoder.encode('type', this.type);
  }
}
