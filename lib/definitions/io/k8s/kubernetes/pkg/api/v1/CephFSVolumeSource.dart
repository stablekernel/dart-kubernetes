import 'package:kubernetes/definitions/io/k8s/api/core/v1/LocalObjectReference.dart';
import 'package:kubernetes/base.dart';

class CephFSVolumeSource extends Codable {
  CephFSVolumeSource(this.monitors);

  CephFSVolumeSource.empty();

  @override
  void decode(Coder decoder) {
    monitors = decoder.decode('monitors');
    path = decoder.decode('path');
    readOnly = decoder.decode('readOnly');
    secretFile = decoder.decode('secretFile');
    secretRef = decoder.decode('secretRef', inflate: () => new LocalObjectReference.empty());
    user = decoder.decode('user');
}

  List<String> monitors;
  String path;
  bool readOnly;
  String secretFile;
  LocalObjectReference secretRef;
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
