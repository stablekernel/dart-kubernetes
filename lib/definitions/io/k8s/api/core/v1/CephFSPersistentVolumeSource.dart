import 'package:kubernetes/definitions/io/k8s/api/core/v1/SecretReference.dart';
import 'package:kubernetes/base.dart';

class CephFSPersistentVolumeSource extends Codable {
  CephFSPersistentVolumeSource(this.monitors);

  CephFSPersistentVolumeSource.empty();

  @override
  void decode(Coder decoder) {
    monitors = decoder.decode('monitors');
    path = decoder.decode('path');
    readOnly = decoder.decode('readOnly');
    secretFile = decoder.decode('secretFile');
    secretRef = decoder.decode('secretRef', inflate: () => new SecretReference.empty());
    user = decoder.decode('user');
}

  List<String> monitors;
  String path;
  bool readOnly;
  String secretFile;
  SecretReference secretRef;
  String user;

  @override
  void encode(Coder encoder) {
    encoder.encode('monitors', this.monitors);
    encoder.encode('path', this.path);
    encoder.encode('readOnly', this.readOnly);
    encoder.encode('secretFile', this.secretFile);
    encoder.encodeObject('secretRef', this.secretRef);
    encoder.encode('user', this.user);
  }
}
