import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/APIGroup.dart';
import 'package:kubernetes/base.dart';

class APIGroupList extends Codable {
  APIGroupList(this.groups);

  APIGroupList.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    groups = decoder.decodeObjects('groups', () => new APIGroup.empty());
    kind = decoder.decode('kind');
}

  String apiVersion;
  List<APIGroup> groups;
  String kind;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encodeObjects('groups', this.groups);
    encoder.encode('kind', this.kind);
  }
}
