import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/APIResource.dart';
import 'package:kubernetes/base.dart';

class APIResourceList extends Codable {
  APIResourceList(this.groupVersion, this.resources);

  APIResourceList.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    groupVersion = decoder.decode('groupVersion');
    kind = decoder.decode('kind');
    resources = decoder.decodeObjects('resources', () => new APIResource.empty());
}

  String apiVersion;
  String groupVersion;
  String kind;
  List<APIResource> resources;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('groupVersion', this.groupVersion);
    encoder.encode('kind', this.kind);
    encoder.encodeObjects('resources', this.resources);
  }
}
