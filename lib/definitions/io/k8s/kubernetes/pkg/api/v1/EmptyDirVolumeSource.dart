import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/api/resource/Quantity.dart';
import 'package:kubernetes/base.dart';

class EmptyDirVolumeSource extends Codable {
  EmptyDirVolumeSource();

  EmptyDirVolumeSource.empty();

  @override
  void decode(Coder decoder) {
    medium = decoder.decode('medium');
    sizeLimit = decoder.decode('sizeLimit', inflate: () => new Quantity.empty());
}

  String medium;
  Quantity sizeLimit;

  @override
  void encode(Coder encoder) {
    encoder.encode('medium', this.medium);
    encoder.encodeObject('sizeLimit', this.sizeLimit);
  }
}
