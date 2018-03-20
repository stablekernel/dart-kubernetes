import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/Time.dart';
import 'package:kubernetes/base.dart';

class NodeCondition extends Codable {
  NodeCondition(this.type, this.status);

  NodeCondition.empty();

  @override
  void decode(Coder decoder) {
    lastHeartbeatTime = decoder.decode('lastHeartbeatTime', inflate: () => new Time.empty());
    lastTransitionTime = decoder.decode('lastTransitionTime', inflate: () => new Time.empty());
    message = decoder.decode('message');
    reason = decoder.decode('reason');
    status = decoder.decode('status');
    type = decoder.decode('type');
}

  Time lastHeartbeatTime;
  Time lastTransitionTime;
  String message;
  String reason;
  String status;
  String type;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('lastHeartbeatTime', this.lastHeartbeatTime);
    encoder.encodeObject('lastTransitionTime', this.lastTransitionTime);
    encoder.encode('message', this.message);
    encoder.encode('reason', this.reason);
    encoder.encode('status', this.status);
    encoder.encode('type', this.type);
  }
}
