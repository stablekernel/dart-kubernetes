import 'package:kubernetes/base.dart';

class GroupVersionForDiscovery extends Codable {
  GroupVersionForDiscovery(this.groupVersion, this.version);

  GroupVersionForDiscovery.empty();

  @override
  void decode(Coder decoder) {
    groupVersion = decoder.decode('groupVersion');
    version = decoder.decode('version');
}

  String groupVersion;
  String version;

  @override
  void encode(Coder encoder) {
    encoder.encode('groupVersion', this.groupVersion);
    encoder.encode('version', this.version);
  }
}
