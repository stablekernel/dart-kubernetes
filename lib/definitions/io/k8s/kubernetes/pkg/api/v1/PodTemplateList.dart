import 'package:kubernetes/definitions/io/k8s/api/core/v1/PodTemplate.dart';
import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ListMeta.dart';
import 'package:kubernetes/base.dart';

class PodTemplateList extends Codable {
  PodTemplateList(this.items);

  PodTemplateList.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    items = decoder.decodeObjects('items', () => new PodTemplate.empty());
    kind = decoder.decode('kind');
    metadata = decoder.decode('metadata', inflate: () => new ListMeta.empty());
}

  String apiVersion;
  List<PodTemplate> items;
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
