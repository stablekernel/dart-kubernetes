import 'package:kubernetes/definitions/io/k8s/api/core/v1/ObjectReference.dart';
import 'package:kubernetes/base.dart';

class StorageOSPersistentVolumeSource extends Codable {
  StorageOSPersistentVolumeSource();

  StorageOSPersistentVolumeSource.empty();

  @override
  void decode(Coder decoder) {
    fsType = decoder.decode('fsType');
    readOnly = decoder.decode('readOnly');
    secretRef = decoder.decode('secretRef', inflate: () => new ObjectReference.empty());
    volumeName = decoder.decode('volumeName');
    volumeNamespace = decoder.decode('volumeNamespace');
}

  String fsType;
  bool readOnly;
  ObjectReference secretRef;
  String volumeName;
  String volumeNamespace;

  @override
  void encode(Coder encoder) {
    encoder.encode('fsType', this.fsType);
    encoder.encode('readOnly', this.readOnly);
    encoder.encodeObject('secretRef', this.secretRef);
    encoder.encode('volumeName', this.volumeName);
    encoder.encode('volumeNamespace', this.volumeNamespace);
  }
}
