import 'package:kubernetes/base.dart';

class FCVolumeSource extends Codable {
  FCVolumeSource();

  FCVolumeSource.empty();

  @override
  void decode(Coder decoder) {
    fsType = decoder.decode('fsType');
    lun = decoder.decode('lun');
    readOnly = decoder.decode('readOnly');
    targetWWNs = decoder.decode('targetWWNs');
    wwids = decoder.decode('wwids');
}

  String fsType;
  int lun;
  bool readOnly;
  List<String> targetWWNs;
  List<String> wwids;

  @override
  void encode(Coder encoder) {
    encoder.encode('fsType', this.fsType);
    encoder.encode('lun', this.lun);
    encoder.encode('readOnly', this.readOnly);
    encoder.encode('targetWWNs', this.targetWWNs);
    encoder.encode('wwids', this.wwids);
  }
}
