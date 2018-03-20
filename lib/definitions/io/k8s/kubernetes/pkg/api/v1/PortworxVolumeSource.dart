import 'package:kubernetes/base.dart';

class PortworxVolumeSource extends Codable {
  PortworxVolumeSource(this.volumeID);

  PortworxVolumeSource.empty();

  @override
  void decode(Coder decoder) {
    fsType = decoder.decode('fsType');
    readOnly = decoder.decode('readOnly');
    volumeID = decoder.decode('volumeID');
}

  String fsType;
  bool readOnly;
  String volumeID;

  @override
  void encode(Coder encoder) {
    encoder.encode('fsType', this.fsType);
    encoder.encode('readOnly', this.readOnly);
    encoder.encode('volumeID', this.volumeID);
  }
}
