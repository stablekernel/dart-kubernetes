import 'package:kubernetes/definitions/io/k8s/apiextensions-apiserver/pkg/apis/apiextensions/v1beta1/JSONSchemaProps.dart';
import 'package:kubernetes/base.dart';

class JSONSchemaPropsOrArray extends Codable {
  JSONSchemaPropsOrArray(this.Schema, this.JSONSchemas);

  JSONSchemaPropsOrArray.empty();

  @override
  void decode(Coder decoder) {
    JSONSchemas = decoder.decodeObjects('JSONSchemas', () => new JSONSchemaProps.empty());
    Schema = decoder.decode('Schema', inflate: () => new JSONSchemaProps.empty());
}

  List<JSONSchemaProps> JSONSchemas;
  JSONSchemaProps Schema;

  @override
  void encode(Coder encoder) {
    encoder.encodeObjects('JSONSchemas', this.JSONSchemas);
    encoder.encodeObject('Schema', this.Schema);
  }
}
