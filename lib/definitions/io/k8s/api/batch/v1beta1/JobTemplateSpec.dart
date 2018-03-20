import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ObjectMeta.dart';
import 'package:kubernetes/definitions/io/k8s/api/batch/v1/JobSpec.dart';
import 'package:kubernetes/base.dart';

class JobTemplateSpec extends Codable {
  JobTemplateSpec();

  JobTemplateSpec.empty();

  @override
  void decode(Coder decoder) {
    metadata = decoder.decode('metadata', inflate: () => new ObjectMeta.empty());
    spec = decoder.decode('spec', inflate: () => new JobSpec.empty());
}

  ObjectMeta metadata;
  JobSpec spec;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('metadata', this.metadata);
    encoder.encodeObject('spec', this.spec);
  }
}
