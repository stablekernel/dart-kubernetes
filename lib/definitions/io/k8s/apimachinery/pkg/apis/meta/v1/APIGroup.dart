import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/GroupVersionForDiscovery.dart';
import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ServerAddressByClientCIDR.dart';
import 'package:kubernetes/base.dart';

class APIGroup extends Codable {
  APIGroup(this.name, this.versions, this.serverAddressByClientCIDRs);

  APIGroup.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    kind = decoder.decode('kind');
    name = decoder.decode('name');
    preferredVersion = decoder.decode('preferredVersion', inflate: () => new GroupVersionForDiscovery.empty());
    serverAddressByClientCIDRs = decoder.decodeObjects('serverAddressByClientCIDRs', () => new ServerAddressByClientCIDR.empty());
    versions = decoder.decodeObjects('versions', () => new GroupVersionForDiscovery.empty());
}

  String apiVersion;
  String kind;
  String name;
  GroupVersionForDiscovery preferredVersion;
  List<ServerAddressByClientCIDR> serverAddressByClientCIDRs;
  List<GroupVersionForDiscovery> versions;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('kind', this.kind);
    encoder.encode('name', this.name);
    encoder.encodeObject('preferredVersion', this.preferredVersion);
    encoder.encodeObjects('serverAddressByClientCIDRs', this.serverAddressByClientCIDRs);
    encoder.encodeObjects('versions', this.versions);
  }
}
