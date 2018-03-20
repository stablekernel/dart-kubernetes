import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ObjectMeta.dart';
import 'package:kubernetes/definitions/io/k8s/apiextensions-apiserver/pkg/apis/apiextensions/v1beta1/CustomResourceDefinitionSpec.dart';
import 'package:kubernetes/definitions/io/k8s/apiextensions-apiserver/pkg/apis/apiextensions/v1beta1/CustomResourceDefinitionStatus.dart';
import 'package:kubernetes/base.dart';

class CustomResourceDefinition extends Codable {
  CustomResourceDefinition();

  CustomResourceDefinition.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    kind = decoder.decode('kind');
    metadata = decoder.decode('metadata', inflate: () => new ObjectMeta.empty());
    spec = decoder.decode('spec', inflate: () => new CustomResourceDefinitionSpec.empty());
    status = decoder.decode('status', inflate: () => new CustomResourceDefinitionStatus.empty());
}

  String apiVersion;
  String kind;
  ObjectMeta metadata;
  CustomResourceDefinitionSpec spec;
  CustomResourceDefinitionStatus status;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('kind', this.kind);
    encoder.encodeObject('metadata', this.metadata);
    encoder.encodeObject('spec', this.spec);
    encoder.encodeObject('status', this.status);
  }
}
