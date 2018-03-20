import 'package:kubernetes/definitions/io/k8s/api/batch/v2alpha1/JobTemplateSpec.dart';
import 'package:kubernetes/base.dart';

class CronJobSpec extends Codable {
  CronJobSpec(this.schedule, this.jobTemplate);

  CronJobSpec.empty();

  @override
  void decode(Coder decoder) {
    concurrencyPolicy = decoder.decode('concurrencyPolicy');
    failedJobsHistoryLimit = decoder.decode('failedJobsHistoryLimit');
    jobTemplate = decoder.decode('jobTemplate', inflate: () => new JobTemplateSpec.empty());
    schedule = decoder.decode('schedule');
    startingDeadlineSeconds = decoder.decode('startingDeadlineSeconds');
    successfulJobsHistoryLimit = decoder.decode('successfulJobsHistoryLimit');
    suspend = decoder.decode('suspend');
}

  String concurrencyPolicy;
  int failedJobsHistoryLimit;
  JobTemplateSpec jobTemplate;
  String schedule;
  int startingDeadlineSeconds;
  int successfulJobsHistoryLimit;
  bool suspend;

  @override
  void encode(Coder encoder) {
    encoder.encode('concurrencyPolicy', this.concurrencyPolicy);
    encoder.encode('failedJobsHistoryLimit', this.failedJobsHistoryLimit);
    encoder.encodeObject('jobTemplate', this.jobTemplate);
    encoder.encode('schedule', this.schedule);
    encoder.encode('startingDeadlineSeconds', this.startingDeadlineSeconds);
    encoder.encode('successfulJobsHistoryLimit', this.successfulJobsHistoryLimit);
    encoder.encode('suspend', this.suspend);
  }
}
