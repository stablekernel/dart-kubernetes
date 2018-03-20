import 'package:kubernetes/definitions/io/k8s/apiextensions-apiserver/pkg/apis/apiextensions/v1beta1/JSONSchemaProps.dart';
import 'package:kubernetes/base.dart';

class JSONSchemaPropsOrStringArray extends Codable {
  JSONSchemaPropsOrStringArray(this.Schema, this.Property);

  JSONSchemaPropsOrStringArray.empty();

  @override
  void decode(Coder decoder) {
    Property = decoder.decode('Property');
    Schema = decoder.decode('Schema', inflate: () => new JSONSchemaProps.empty());
}

  List<String> Property;
  JSONSchemaProps Schema;

  @override
  void encode(Coder encoder) {
    encoder.encode('Property', this.Property);
    encoder.encodeObject('Schema', this.Schema);
  }
}
