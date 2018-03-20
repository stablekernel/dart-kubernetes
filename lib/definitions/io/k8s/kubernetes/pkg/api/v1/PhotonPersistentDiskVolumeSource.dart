import 'package:kubernetes/base.dart';

class PhotonPersistentDiskVolumeSource extends Codable {
  PhotonPersistentDiskVolumeSource(this.pdID);

  PhotonPersistentDiskVolumeSource.empty();

  @override
  void decode(Coder decoder) {
    fsType = decoder.decode('fsType');
    pdID = decoder.decode('pdID');
}

  String fsType;
  String pdID;

  @override
  void encode(Coder encoder) {
    encoder.encode('fsType', this.fsType);
    encoder.encode('pdID', this.pdID);
  }
}
