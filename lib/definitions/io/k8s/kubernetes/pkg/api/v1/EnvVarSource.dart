import 'package:kubernetes/definitions/io/k8s/api/core/v1/ConfigMapKeySelector.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/ObjectFieldSelector.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/ResourceFieldSelector.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/SecretKeySelector.dart';
import 'package:kubernetes/base.dart';

class EnvVarSource extends Codable {
  EnvVarSource();

  EnvVarSource.empty();

  @override
  void decode(Coder decoder) {
    configMapKeyRef = decoder.decode('configMapKeyRef', inflate: () => new ConfigMapKeySelector.empty());
    fieldRef = decoder.decode('fieldRef', inflate: () => new ObjectFieldSelector.empty());
    resourceFieldRef = decoder.decode('resourceFieldRef', inflate: () => new ResourceFieldSelector.empty());
    secretKeyRef = decoder.decode('secretKeyRef', inflate: () => new SecretKeySelector.empty());
}

  ConfigMapKeySelector configMapKeyRef;
  ObjectFieldSelector fieldRef;
  ResourceFieldSelector resourceFieldRef;
  SecretKeySelector secretKeyRef;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('configMapKeyRef', this.configMapKeyRef);
    encoder.encodeObject('fieldRef', this.fieldRef);
    encoder.encodeObject('resourceFieldRef', this.resourceFieldRef);
    encoder.encodeObject('secretKeyRef', this.secretKeyRef);
  }
}
