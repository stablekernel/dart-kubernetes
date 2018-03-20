import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/Time.dart';
import 'package:kubernetes/base.dart';

class DeploymentCondition extends Codable {
  DeploymentCondition(this.type, this.status);

  DeploymentCondition.empty();

  @override
  void decode(Coder decoder) {
    lastTransitionTime = decoder.decode('lastTransitionTime', inflate: () => new Time.empty());
    lastUpdateTime = decoder.decode('lastUpdateTime', inflate: () => new Time.empty());
    message = decoder.decode('message');
    reason = decoder.decode('reason');
    status = decoder.decode('status');
    type = decoder.decode('type');
}

  Time lastTransitionTime;
  Time lastUpdateTime;
  String message;
  String reason;
  String status;
  String type;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('lastTransitionTime', this.lastTransitionTime);
    encoder.encodeObject('lastUpdateTime', this.lastUpdateTime);
    encoder.encode('message', this.message);
    encoder.encode('reason', this.reason);
    encoder.encode('status', this.status);
    encoder.encode('type', this.type);
  }
}
