import 'package:kubernetes/base.dart';

class AzureDiskVolumeSource extends Codable {
  AzureDiskVolumeSource(this.diskName, this.diskURI);

  AzureDiskVolumeSource.empty();

  @override
  void decode(Coder decoder) {
    cachingMode = decoder.decode('cachingMode');
    diskName = decoder.decode('diskName');
    diskURI = decoder.decode('diskURI');
    fsType = decoder.decode('fsType');
    kind = decoder.decode('kind');
    readOnly = decoder.decode('readOnly');
}

  String cachingMode;
  String diskName;
  String diskURI;
  String fsType;
  String kind;
  bool readOnly;

  @override
  void encode(Coder encoder) {
    encoder.encode('cachingMode', this.cachingMode);
    encoder.encode('diskName', this.diskName);
    encoder.encode('diskURI', this.diskURI);
    encoder.encode('fsType', this.fsType);
    encoder.encode('kind', this.kind);
    encoder.encode('readOnly', this.readOnly);
  }
}
