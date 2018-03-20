import 'package:kubernetes/base.dart';

class GCEPersistentDiskVolumeSource extends Codable {
  GCEPersistentDiskVolumeSource(this.pdName);

  GCEPersistentDiskVolumeSource.empty();

  @override
  void decode(Coder decoder) {
    fsType = decoder.decode('fsType');
    partition = decoder.decode('partition');
    pdName = decoder.decode('pdName');
    readOnly = decoder.decode('readOnly');
}

  String fsType;
  int partition;
  String pdName;
  bool readOnly;

  @override
  void encode(Coder encoder) {
    encoder.encode('fsType', this.fsType);
    encoder.encode('partition', this.partition);
    encoder.encode('pdName', this.pdName);
    encoder.encode('readOnly', this.readOnly);
  }
}
