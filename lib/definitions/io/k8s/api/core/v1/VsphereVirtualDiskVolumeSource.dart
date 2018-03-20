import 'package:kubernetes/base.dart';

class VsphereVirtualDiskVolumeSource extends Codable {
  VsphereVirtualDiskVolumeSource(this.volumePath);

  VsphereVirtualDiskVolumeSource.empty();

  @override
  void decode(Coder decoder) {
    fsType = decoder.decode('fsType');
    storagePolicyID = decoder.decode('storagePolicyID');
    storagePolicyName = decoder.decode('storagePolicyName');
    volumePath = decoder.decode('volumePath');
}

  String fsType;
  String storagePolicyID;
  String storagePolicyName;
  String volumePath;

  @override
  void encode(Coder encoder) {
    encoder.encode('fsType', this.fsType);
    encoder.encode('storagePolicyID', this.storagePolicyID);
    encoder.encode('storagePolicyName', this.storagePolicyName);
    encoder.encode('volumePath', this.volumePath);
  }
}
