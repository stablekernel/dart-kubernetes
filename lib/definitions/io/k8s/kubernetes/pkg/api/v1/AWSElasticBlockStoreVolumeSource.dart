import 'package:kubernetes/base.dart';

class AWSElasticBlockStoreVolumeSource extends Codable {
  AWSElasticBlockStoreVolumeSource(this.volumeID);

  AWSElasticBlockStoreVolumeSource.empty();

  @override
  void decode(Coder decoder) {
    fsType = decoder.decode('fsType');
    partition = decoder.decode('partition');
    readOnly = decoder.decode('readOnly');
    volumeID = decoder.decode('volumeID');
}

  String fsType;
  int partition;
  bool readOnly;
  String volumeID;

  @override
  void encode(Coder encoder) {
    encoder.encode('fsType', this.fsType);
    encoder.encode('partition', this.partition);
    encoder.encode('readOnly', this.readOnly);
    encoder.encode('volumeID', this.volumeID);
  }
}
