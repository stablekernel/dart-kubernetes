import 'package:kubernetes/base.dart';

class VolumeMount extends Codable {
  VolumeMount(this.name, this.mountPath);

  VolumeMount.empty();

  @override
  void decode(Coder decoder) {
    mountPath = decoder.decode('mountPath');
    mountPropagation = decoder.decode('mountPropagation');
    name = decoder.decode('name');
    readOnly = decoder.decode('readOnly');
    subPath = decoder.decode('subPath');
}

  String mountPath;
  String mountPropagation;
  String name;
  bool readOnly;
  String subPath;

  @override
  void encode(Coder encoder) {
    encoder.encode('mountPath', this.mountPath);
    encoder.encode('mountPropagation', this.mountPropagation);
    encoder.encode('name', this.name);
    encoder.encode('readOnly', this.readOnly);
    encoder.encode('subPath', this.subPath);
  }
}
