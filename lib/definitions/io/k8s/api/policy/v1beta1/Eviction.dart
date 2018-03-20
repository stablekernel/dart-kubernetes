import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/DeleteOptions.dart';
import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ObjectMeta.dart';
import 'package:kubernetes/base.dart';

class Eviction extends Codable {
  Eviction();

  Eviction.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    deleteOptions = decoder.decode('deleteOptions', inflate: () => new DeleteOptions.empty());
    kind = decoder.decode('kind');
    metadata = decoder.decode('metadata', inflate: () => new ObjectMeta.empty());
}

  String apiVersion;
  DeleteOptions deleteOptions;
  String kind;
  ObjectMeta metadata;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encodeObject('deleteOptions', this.deleteOptions);
    encoder.encode('kind', this.kind);
    encoder.encodeObject('metadata', this.metadata);
  }
}
