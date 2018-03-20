import 'package:kubernetes/base.dart';

class FlockerVolumeSource extends Codable {
  FlockerVolumeSource();

  FlockerVolumeSource.empty();

  @override
  void decode(Coder decoder) {
    datasetName = decoder.decode('datasetName');
    datasetUUID = decoder.decode('datasetUUID');
}

  String datasetName;
  String datasetUUID;

  @override
  void encode(Coder encoder) {
    encoder.encode('datasetName', this.datasetName);
    encoder.encode('datasetUUID', this.datasetUUID);
  }
}
