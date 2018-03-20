import 'package:kubernetes/definitions/io/k8s/apiextensions-apiserver/pkg/apis/apiextensions/v1beta1/CustomResourceDefinitionNames.dart';
import 'package:kubernetes/definitions/io/k8s/apiextensions-apiserver/pkg/apis/apiextensions/v1beta1/CustomResourceValidation.dart';
import 'package:kubernetes/base.dart';

class CustomResourceDefinitionSpec extends Codable {
  CustomResourceDefinitionSpec(this.group, this.version, this.names, this.scope);

  CustomResourceDefinitionSpec.empty();

  @override
  void decode(Coder decoder) {
    group = decoder.decode('group');
    names = decoder.decode('names', inflate: () => new CustomResourceDefinitionNames.empty());
    scope = decoder.decode('scope');
    validation = decoder.decode('validation', inflate: () => new CustomResourceValidation.empty());
    version = decoder.decode('version');
}

  String group;
  CustomResourceDefinitionNames names;
  String scope;
  CustomResourceValidation validation;
  String version;

  @override
  void encode(Coder encoder) {
    encoder.encode('group', this.group);
    encoder.encodeObject('names', this.names);
    encoder.encode('scope', this.scope);
    encoder.encodeObject('validation', this.validation);
    encoder.encode('version', this.version);
  }
}
