import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ServerAddressByClientCIDR.dart';
import 'package:kubernetes/base.dart';

class APIVersions extends Codable {
  APIVersions(this.versions, this.serverAddressByClientCIDRs);

  APIVersions.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    kind = decoder.decode('kind');
    serverAddressByClientCIDRs = decoder.decodeObjects('serverAddressByClientCIDRs', () => new ServerAddressByClientCIDR.empty());
    versions = decoder.decode('versions');
}

  String apiVersion;
  String kind;
  List<ServerAddressByClientCIDR> serverAddressByClientCIDRs;
  List<String> versions;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('kind', this.kind);
    encoder.encodeObjects('serverAddressByClientCIDRs', this.serverAddressByClientCIDRs);
    encoder.encode('versions', this.versions);
  }
}
