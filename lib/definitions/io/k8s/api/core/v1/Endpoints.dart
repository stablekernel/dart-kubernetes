import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ObjectMeta.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/EndpointSubset.dart';
import 'package:kubernetes/base.dart';

class Endpoints extends Codable {
  Endpoints(this.subsets);

  Endpoints.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    kind = decoder.decode('kind');
    metadata = decoder.decode('metadata', inflate: () => new ObjectMeta.empty());
    subsets = decoder.decodeObjects('subsets', () => new EndpointSubset.empty());
}

  String apiVersion;
  String kind;
  ObjectMeta metadata;
  List<EndpointSubset> subsets;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('kind', this.kind);
    encoder.encodeObject('metadata', this.metadata);
    encoder.encodeObjects('subsets', this.subsets);
  }
}
