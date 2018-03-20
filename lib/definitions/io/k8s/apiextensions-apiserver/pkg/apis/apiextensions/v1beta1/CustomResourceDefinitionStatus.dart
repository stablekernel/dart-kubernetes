import 'package:kubernetes/definitions/io/k8s/apiextensions-apiserver/pkg/apis/apiextensions/v1beta1/CustomResourceDefinitionNames.dart';
import 'package:kubernetes/definitions/io/k8s/apiextensions-apiserver/pkg/apis/apiextensions/v1beta1/CustomResourceDefinitionCondition.dart';
import 'package:kubernetes/base.dart';

class CustomResourceDefinitionStatus extends Codable {
  CustomResourceDefinitionStatus(this.conditions, this.acceptedNames);

  CustomResourceDefinitionStatus.empty();

  @override
  void decode(Coder decoder) {
    acceptedNames = decoder.decode('acceptedNames', inflate: () => new CustomResourceDefinitionNames.empty());
    conditions = decoder.decodeObjects('conditions', () => new CustomResourceDefinitionCondition.empty());
}

  CustomResourceDefinitionNames acceptedNames;
  List<CustomResourceDefinitionCondition> conditions;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('acceptedNames', this.acceptedNames);
    encoder.encodeObjects('conditions', this.conditions);
  }
}
