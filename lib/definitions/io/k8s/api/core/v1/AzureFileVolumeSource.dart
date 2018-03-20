import 'package:kubernetes/base.dart';

class AzureFileVolumeSource extends Codable {
  AzureFileVolumeSource(this.secretName, this.shareName);

  AzureFileVolumeSource.empty();

  @override
  void decode(Coder decoder) {
    readOnly = decoder.decode('readOnly');
    secretName = decoder.decode('secretName');
    shareName = decoder.decode('shareName');
}

  bool readOnly;
  String secretName;
  String shareName;

  @override
  void encode(Coder encoder) {
    encoder.encode('readOnly', this.readOnly);
    encoder.encode('secretName', this.secretName);
    encoder.encode('shareName', this.shareName);
  }
}
