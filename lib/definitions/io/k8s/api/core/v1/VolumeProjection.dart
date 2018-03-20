import 'package:kubernetes/definitions/io/k8s/api/core/v1/ConfigMapProjection.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/DownwardAPIProjection.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/SecretProjection.dart';
import 'package:kubernetes/base.dart';

class VolumeProjection extends Codable {
  VolumeProjection();

  VolumeProjection.empty();

  @override
  void decode(Coder decoder) {
    configMap = decoder.decode('configMap', inflate: () => new ConfigMapProjection.empty());
    downwardAPI = decoder.decode('downwardAPI', inflate: () => new DownwardAPIProjection.empty());
    secret = decoder.decode('secret', inflate: () => new SecretProjection.empty());
}

  ConfigMapProjection configMap;
  DownwardAPIProjection downwardAPI;
  SecretProjection secret;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('configMap', this.configMap);
    encoder.encodeObject('downwardAPI', this.downwardAPI);
    encoder.encodeObject('secret', this.secret);
  }
}
