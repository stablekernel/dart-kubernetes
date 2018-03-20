import 'package:kubernetes/definitions/io/k8s/apiextensions-apiserver/pkg/apis/apiextensions/v1beta1/JSONSchemaPropsOrBool.dart';
import 'package:kubernetes/definitions/io/k8s/apiextensions-apiserver/pkg/apis/apiextensions/v1beta1/JSONSchemaProps.dart';
import 'package:kubernetes/definitions/io/k8s/apiextensions-apiserver/pkg/apis/apiextensions/v1beta1/JSON.dart';
import 'package:kubernetes/definitions/io/k8s/apiextensions-apiserver/pkg/apis/apiextensions/v1beta1/JSONSchemaPropsOrStringArray.dart';
import 'package:kubernetes/definitions/io/k8s/apiextensions-apiserver/pkg/apis/apiextensions/v1beta1/ExternalDocumentation.dart';
import 'package:kubernetes/definitions/io/k8s/apiextensions-apiserver/pkg/apis/apiextensions/v1beta1/JSONSchemaPropsOrArray.dart';
import 'package:kubernetes/base.dart';

class JSONSchemaProps extends Codable {
  JSONSchemaProps();

  JSONSchemaProps.empty();

  @override
  void decode(Coder decoder) {
    $ref = decoder.decode(r'$ref');
    $schema = decoder.decode(r'$schema');
    additionalItems = decoder.decode('additionalItems', inflate: () => new JSONSchemaPropsOrBool.empty());
    additionalProperties = decoder.decode('additionalProperties', inflate: () => new JSONSchemaPropsOrBool.empty());
    allOf = decoder.decodeObjects('allOf', () => new JSONSchemaProps.empty());
    anyOf = decoder.decodeObjects('anyOf', () => new JSONSchemaProps.empty());
    default_ = decoder.decode('default', inflate: () => new JSON.empty());
    definitions = decoder.decodeObjectMap('definitions', () => new JSONSchemaProps.empty());
    dependencies = decoder.decodeObjectMap('dependencies', () => new JSONSchemaPropsOrStringArray.empty());
    description = decoder.decode('description');
    enum_ = decoder.decodeObjects('enum', () => new JSON.empty());
    example = decoder.decode('example', inflate: () => new JSON.empty());
    exclusiveMaximum = decoder.decode('exclusiveMaximum');
    exclusiveMinimum = decoder.decode('exclusiveMinimum');
    externalDocs = decoder.decode('externalDocs', inflate: () => new ExternalDocumentation.empty());
    format = decoder.decode('format');
    id = decoder.decode('id');
    items = decoder.decode('items', inflate: () => new JSONSchemaPropsOrArray.empty());
    maxItems = decoder.decode('maxItems');
    maxLength = decoder.decode('maxLength');
    maxProperties = decoder.decode('maxProperties');
    maximum = decoder.decode('maximum');
    minItems = decoder.decode('minItems');
    minLength = decoder.decode('minLength');
    minProperties = decoder.decode('minProperties');
    minimum = decoder.decode('minimum');
    multipleOf = decoder.decode('multipleOf');
    not = decoder.decode('not', inflate: () => new JSONSchemaProps.empty());
    oneOf = decoder.decodeObjects('oneOf', () => new JSONSchemaProps.empty());
    pattern = decoder.decode('pattern');
    patternProperties = decoder.decodeObjectMap('patternProperties', () => new JSONSchemaProps.empty());
    properties = decoder.decodeObjectMap('properties', () => new JSONSchemaProps.empty());
    required = decoder.decode('required');
    title = decoder.decode('title');
    type = decoder.decode('type');
    uniqueItems = decoder.decode('uniqueItems');
}

  String $ref;
  String $schema;
  JSONSchemaPropsOrBool additionalItems;
  JSONSchemaPropsOrBool additionalProperties;
  List<JSONSchemaProps> allOf;
  List<JSONSchemaProps> anyOf;
  JSON default_;
  Map<String, JSONSchemaProps> definitions;
  Map<String, JSONSchemaPropsOrStringArray> dependencies;
  String description;
  List<JSON> enum_;
  JSON example;
  bool exclusiveMaximum;
  bool exclusiveMinimum;
  ExternalDocumentation externalDocs;
  String format;
  String id;
  JSONSchemaPropsOrArray items;
  int maxItems;
  int maxLength;
  int maxProperties;
  num maximum;
  int minItems;
  int minLength;
  int minProperties;
  num minimum;
  num multipleOf;
  JSONSchemaProps not;
  List<JSONSchemaProps> oneOf;
  String pattern;
  Map<String, JSONSchemaProps> patternProperties;
  Map<String, JSONSchemaProps> properties;
  List<String> required;
  String title;
  String type;
  bool uniqueItems;

  @override
  void encode(Coder encoder) {
    encoder.encode(r'$ref', this.$ref);
    encoder.encode(r'$schema', this.$schema);
    encoder.encodeObject('additionalItems', this.additionalItems);
    encoder.encodeObject('additionalProperties', this.additionalProperties);
    encoder.encodeObjects('allOf', this.allOf);
    encoder.encodeObjects('anyOf', this.anyOf);
    encoder.encodeObject('default', this.default_);
    encoder.encodeObjectMap('definitions', this.definitions);
    encoder.encodeObjectMap('dependencies', this.dependencies);
    encoder.encode('description', this.description);
    encoder.encodeObjects('enum', this.enum_);
    encoder.encodeObject('example', this.example);
    encoder.encode('exclusiveMaximum', this.exclusiveMaximum);
    encoder.encode('exclusiveMinimum', this.exclusiveMinimum);
    encoder.encodeObject('externalDocs', this.externalDocs);
    encoder.encode('format', this.format);
    encoder.encode('id', this.id);
    encoder.encodeObject('items', this.items);
    encoder.encode('maxItems', this.maxItems);
    encoder.encode('maxLength', this.maxLength);
    encoder.encode('maxProperties', this.maxProperties);
    encoder.encode('maximum', this.maximum);
    encoder.encode('minItems', this.minItems);
    encoder.encode('minLength', this.minLength);
    encoder.encode('minProperties', this.minProperties);
    encoder.encode('minimum', this.minimum);
    encoder.encode('multipleOf', this.multipleOf);
    encoder.encodeObject('not', this.not);
    encoder.encodeObjects('oneOf', this.oneOf);
    encoder.encode('pattern', this.pattern);
    encoder.encodeObjectMap('patternProperties', this.patternProperties);
    encoder.encodeObjectMap('properties', this.properties);
    encoder.encode('required', this.required);
    encoder.encode('title', this.title);
    encoder.encode('type', this.type);
    encoder.encode('uniqueItems', this.uniqueItems);
  }
}
