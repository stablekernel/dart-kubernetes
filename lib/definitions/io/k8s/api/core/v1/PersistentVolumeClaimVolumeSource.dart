import 'package:kubernetes/base.dart';

class PersistentVolumeClaimVolumeSource extends Codable {
  PersistentVolumeClaimVolumeSource(this.claimName);

  PersistentVolumeClaimVolumeSource.empty();

  @override
  void decode(Coder decoder) {
    claimName = decoder.decode('claimName');
    readOnly = decoder.decode('readOnly');
}

  String claimName;
  bool readOnly;

  @override
  void encode(Coder encoder) {
    encoder.encode('claimName', this.claimName);
    encoder.encode('readOnly', this.readOnly);
  }
}
