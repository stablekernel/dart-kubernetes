import 'package:kubernetes/base.dart';

class AzureFilePersistentVolumeSource extends Codable {
  AzureFilePersistentVolumeSource(this.secretName, this.shareName);

  AzureFilePersistentVolumeSource.empty();

  @override
  void decode(Coder decoder) {
    readOnly = decoder.decode('readOnly');
    secretName = decoder.decode('secretName');
    secretNamespace = decoder.decode('secretNamespace');
    shareName = decoder.decode('shareName');
}

  bool readOnly;
  String secretName;
  String secretNamespace;
  String shareName;

  @override
  void encode(Coder encoder) {
    encoder.encode('readOnly', this.readOnly);
    encoder.encode('secretName', this.secretName);
    encoder.encode('secretNamespace', this.secretNamespace);
    encoder.encode('shareName', this.shareName);
  }
}
