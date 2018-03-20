import 'package:kubernetes/definitions/io/k8s/api/core/v1/ComponentStatus.dart';
import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ListMeta.dart';
import 'package:kubernetes/base.dart';

class ComponentStatusList extends Codable {
  ComponentStatusList(this.items);

  ComponentStatusList.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    items = decoder.decodeObjects('items', () => new ComponentStatus.empty());
    kind = decoder.decode('kind');
    metadata = decoder.decode('metadata', inflate: () => new ListMeta.empty());
}

  String apiVersion;
  List<ComponentStatus> items;
  String kind;
  ListMeta metadata;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encodeObjects('items', this.items);
    encoder.encode('kind', this.kind);
    encoder.encodeObject('metadata', this.metadata);
  }
}
