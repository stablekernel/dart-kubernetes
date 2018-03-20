import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ObjectMeta.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/PodTemplateSpec.dart';
import 'package:kubernetes/base.dart';

class PodTemplate extends Codable {
  PodTemplate();

  PodTemplate.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    kind = decoder.decode('kind');
    metadata = decoder.decode('metadata', inflate: () => new ObjectMeta.empty());
    template = decoder.decode('template', inflate: () => new PodTemplateSpec.empty());
}

  String apiVersion;
  String kind;
  ObjectMeta metadata;
  PodTemplateSpec template;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('kind', this.kind);
    encoder.encodeObject('metadata', this.metadata);
    encoder.encodeObject('template', this.template);
  }
}
