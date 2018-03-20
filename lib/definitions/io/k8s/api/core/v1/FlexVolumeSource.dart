import 'package:kubernetes/definitions/io/k8s/api/core/v1/LocalObjectReference.dart';
import 'package:kubernetes/base.dart';

class FlexVolumeSource extends Codable {
  FlexVolumeSource(this.driver);

  FlexVolumeSource.empty();

  @override
  void decode(Coder decoder) {
    driver = decoder.decode('driver');
    fsType = decoder.decode('fsType');
    options = decoder.decode('options');
    readOnly = decoder.decode('readOnly');
    secretRef = decoder.decode('secretRef', inflate: () => new LocalObjectReference.empty());
}

  String driver;
  String fsType;
  Map<String, String> options;
  bool readOnly;
  LocalObjectReference secretRef;

  @override
  void encode(Coder encoder) {
    encoder.encode('driver', this.driver);
    encoder.encode('fsType', this.fsType);
    encoder.encode('options', this.options);
    encoder.encode('readOnly', this.readOnly);
    encoder.encodeObject('secretRef', this.secretRef);
  }
}
