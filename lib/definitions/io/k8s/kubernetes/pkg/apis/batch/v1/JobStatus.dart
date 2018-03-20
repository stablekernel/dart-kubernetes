import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/Time.dart';
import 'package:kubernetes/definitions/io/k8s/api/batch/v1/JobCondition.dart';
import 'package:kubernetes/base.dart';

class JobStatus extends Codable {
  JobStatus();

  JobStatus.empty();

  @override
  void decode(Coder decoder) {
    active = decoder.decode('active');
    completionTime = decoder.decode('completionTime', inflate: () => new Time.empty());
    conditions = decoder.decodeObjects('conditions', () => new JobCondition.empty());
    failed = decoder.decode('failed');
    startTime = decoder.decode('startTime', inflate: () => new Time.empty());
    succeeded = decoder.decode('succeeded');
}

  int active;
  Time completionTime;
  List<JobCondition> conditions;
  int failed;
  Time startTime;
  int succeeded;

  @override
  void encode(Coder encoder) {
    encoder.encode('active', this.active);
    encoder.encodeObject('completionTime', this.completionTime);
    encoder.encodeObjects('conditions', this.conditions);
    encoder.encode('failed', this.failed);
    encoder.encodeObject('startTime', this.startTime);
    encoder.encode('succeeded', this.succeeded);
  }
}
