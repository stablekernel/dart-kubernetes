import 'package:kubernetes/definitions/io/k8s/api/core/v1/ObjectFieldSelector.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/ResourceFieldSelector.dart';
import 'package:kubernetes/base.dart';

class DownwardAPIVolumeFile extends Codable {
  DownwardAPIVolumeFile(this.path);

  DownwardAPIVolumeFile.empty();

  @override
  void decode(Coder decoder) {
    fieldRef = decoder.decode('fieldRef', inflate: () => new ObjectFieldSelector.empty());
    mode = decoder.decode('mode');
    path = decoder.decode('path');
    resourceFieldRef = decoder.decode('resourceFieldRef', inflate: () => new ResourceFieldSelector.empty());
}

  ObjectFieldSelector fieldRef;
  int mode;
  String path;
  ResourceFieldSelector resourceFieldRef;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('fieldRef', this.fieldRef);
    encoder.encode('mode', this.mode);
    encoder.encode('path', this.path);
    encoder.encodeObject('resourceFieldRef', this.resourceFieldRef);
  }
}
