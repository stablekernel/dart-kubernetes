import 'package:kubernetes/definitions/io/k8s/api/core/v1/EnvVarSource.dart';
import 'package:kubernetes/base.dart';

class EnvVar extends Codable {
  EnvVar(this.name);

  EnvVar.empty();

  @override
  void decode(Coder decoder) {
    name = decoder.decode('name');
    value = decoder.decode('value');
    valueFrom = decoder.decode('valueFrom', inflate: () => new EnvVarSource.empty());
}

  String name;
  String value;
  EnvVarSource valueFrom;

  @override
  void encode(Coder encoder) {
    encoder.encode('name', this.name);
    encoder.encode('value', this.value);
    encoder.encodeObject('valueFrom', this.valueFrom);
  }
}
