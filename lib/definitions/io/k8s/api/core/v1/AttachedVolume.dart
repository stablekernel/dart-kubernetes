import 'package:kubernetes/base.dart';

class AttachedVolume extends Codable {
  AttachedVolume(this.name, this.devicePath);

  AttachedVolume.empty();

  @override
  void decode(Coder decoder) {
    devicePath = decoder.decode('devicePath');
    name = decoder.decode('name');
}

  String devicePath;
  String name;

  @override
  void encode(Coder encoder) {
    encoder.encode('devicePath', this.devicePath);
    encoder.encode('name', this.name);
  }
}
