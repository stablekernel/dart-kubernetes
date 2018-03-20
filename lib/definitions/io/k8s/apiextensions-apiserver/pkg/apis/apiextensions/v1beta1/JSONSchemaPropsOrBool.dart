import 'package:kubernetes/definitions/io/k8s/apiextensions-apiserver/pkg/apis/apiextensions/v1beta1/JSONSchemaProps.dart';
import 'package:kubernetes/base.dart';

class JSONSchemaPropsOrBool extends Codable {
  JSONSchemaPropsOrBool(this.Allows, this.Schema);

  JSONSchemaPropsOrBool.empty();

  @override
  void decode(Coder decoder) {
    Allows = decoder.decode('Allows');
    Schema = decoder.decode('Schema', inflate: () => new JSONSchemaProps.empty());
}

  bool Allows;
  JSONSchemaProps Schema;

  @override
  void encode(Coder encoder) {
    encoder.encode('Allows', this.Allows);
    encoder.encodeObject('Schema', this.Schema);
  }
}
