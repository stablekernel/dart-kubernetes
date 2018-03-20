import 'package:kubernetes/definitions/io/k8s/apiextensions-apiserver/pkg/apis/apiextensions/v1beta1/JSONSchemaProps.dart';
import 'package:kubernetes/base.dart';

class CustomResourceValidation extends Codable {
  CustomResourceValidation();

  CustomResourceValidation.empty();

  @override
  void decode(Coder decoder) {
    openAPIV3Schema = decoder.decode('openAPIV3Schema', inflate: () => new JSONSchemaProps.empty());
}

  JSONSchemaProps openAPIV3Schema;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('openAPIV3Schema', this.openAPIV3Schema);
  }
}
