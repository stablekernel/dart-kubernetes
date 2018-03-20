import 'package:kubernetes/definitions/io/k8s/api/core/v1/ObjectReference.dart';
import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/Time.dart';
import 'package:kubernetes/base.dart';

class CronJobStatus extends Codable {
  CronJobStatus();

  CronJobStatus.empty();

  @override
  void decode(Coder decoder) {
    active = decoder.decodeObjects('active', () => new ObjectReference.empty());
    lastScheduleTime = decoder.decode('lastScheduleTime', inflate: () => new Time.empty());
}

  List<ObjectReference> active;
  Time lastScheduleTime;

  @override
  void encode(Coder encoder) {
    encoder.encodeObjects('active', this.active);
    encoder.encodeObject('lastScheduleTime', this.lastScheduleTime);
  }
}
