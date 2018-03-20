import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ObjectMeta.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/PodSpec.dart';
import 'package:kubernetes/base.dart';

class PodTemplateSpec extends Codable {
  PodTemplateSpec();

  PodTemplateSpec.empty();

  @override
  void decode(Coder decoder) {
    metadata = decoder.decode('metadata', inflate: () => new ObjectMeta.empty());
    spec = decoder.decode('spec', inflate: () => new PodSpec.empty());
}

  ObjectMeta metadata;
  PodSpec spec;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('metadata', this.metadata);
    encoder.encodeObject('spec', this.spec);
  }
}
