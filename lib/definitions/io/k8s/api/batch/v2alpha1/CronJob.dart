import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ObjectMeta.dart';
import 'package:kubernetes/definitions/io/k8s/api/batch/v2alpha1/CronJobSpec.dart';
import 'package:kubernetes/definitions/io/k8s/api/batch/v2alpha1/CronJobStatus.dart';
import 'package:kubernetes/base.dart';

class CronJob extends Codable {
  CronJob();

  CronJob.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    kind = decoder.decode('kind');
    metadata = decoder.decode('metadata', inflate: () => new ObjectMeta.empty());
    spec = decoder.decode('spec', inflate: () => new CronJobSpec.empty());
    status = decoder.decode('status', inflate: () => new CronJobStatus.empty());
}

  String apiVersion;
  String kind;
  ObjectMeta metadata;
  CronJobSpec spec;
  CronJobStatus status;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('kind', this.kind);
    encoder.encodeObject('metadata', this.metadata);
    encoder.encodeObject('spec', this.spec);
    encoder.encodeObject('status', this.status);
  }
}
