import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/Time.dart';
import 'package:kubernetes/base.dart';

class PersistentVolumeClaimCondition extends Codable {
  PersistentVolumeClaimCondition(this.type, this.status);

  PersistentVolumeClaimCondition.empty();

  @override
  void decode(Coder decoder) {
    lastProbeTime = decoder.decode('lastProbeTime', inflate: () => new Time.empty());
    lastTransitionTime = decoder.decode('lastTransitionTime', inflate: () => new Time.empty());
    message = decoder.decode('message');
    reason = decoder.decode('reason');
    status = decoder.decode('status');
    type = decoder.decode('type');
}

  Time lastProbeTime;
  Time lastTransitionTime;
  String message;
  String reason;
  String status;
  String type;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('lastProbeTime', this.lastProbeTime);
    encoder.encodeObject('lastTransitionTime', this.lastTransitionTime);
    encoder.encode('message', this.message);
    encoder.encode('reason', this.reason);
    encoder.encode('status', this.status);
    encoder.encode('type', this.type);
  }
}
