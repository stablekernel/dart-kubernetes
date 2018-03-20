import 'package:kubernetes/definitions/io/k8s/api/core/v1/ConfigMapEnvSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/SecretEnvSource.dart';
import 'package:kubernetes/base.dart';

class EnvFromSource extends Codable {
  EnvFromSource();

  EnvFromSource.empty();

  @override
  void decode(Coder decoder) {
    configMapRef = decoder.decode('configMapRef', inflate: () => new ConfigMapEnvSource.empty());
    prefix = decoder.decode('prefix');
    secretRef = decoder.decode('secretRef', inflate: () => new SecretEnvSource.empty());
}

  ConfigMapEnvSource configMapRef;
  String prefix;
  SecretEnvSource secretRef;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('configMapRef', this.configMapRef);
    encoder.encode('prefix', this.prefix);
    encoder.encodeObject('secretRef', this.secretRef);
  }
}
