import 'package:kubernetes/definitions/io/k8s/api/core/v1/LocalObjectReference.dart';
import 'package:kubernetes/base.dart';

class RBDVolumeSource extends Codable {
  RBDVolumeSource(this.monitors, this.image);

  RBDVolumeSource.empty();

  @override
  void decode(Coder decoder) {
    fsType = decoder.decode('fsType');
    image = decoder.decode('image');
    keyring = decoder.decode('keyring');
    monitors = decoder.decode('monitors');
    pool = decoder.decode('pool');
    readOnly = decoder.decode('readOnly');
    secretRef = decoder.decode('secretRef', inflate: () => new LocalObjectReference.empty());
    user = decoder.decode('user');
}

  String fsType;
  String image;
  String keyring;
  List<String> monitors;
  String pool;
  bool readOnly;
  LocalObjectReference secretRef;
  String user;

  @override
  void encode(Coder encoder) {
    encoder.encode('fsType', this.fsType);
    encoder.encode('image', this.image);
    encoder.encode('keyring', this.keyring);
    encoder.encode('monitors', this.monitors);
    encoder.encode('pool', this.pool);
    encoder.encode('readOnly', this.readOnly);
    encoder.encodeObject('secretRef', this.secretRef);
    encoder.encode('user', this.user);
  }
}
