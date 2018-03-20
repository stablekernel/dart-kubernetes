import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ObjectMeta.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/PodSpec.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/PodStatus.dart';
import 'package:kubernetes/base.dart';

class Pod extends Codable {
  Pod();

  Pod.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    kind = decoder.decode('kind');
    metadata = decoder.decode('metadata', inflate: () => new ObjectMeta.empty());
    spec = decoder.decode('spec', inflate: () => new PodSpec.empty());
    status = decoder.decode('status', inflate: () => new PodStatus.empty());
}

  String apiVersion;
  String kind;
  ObjectMeta metadata;
  PodSpec spec;
  PodStatus status;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('kind', this.kind);
    encoder.encodeObject('metadata', this.metadata);
    encoder.encodeObject('spec', this.spec);
    encoder.encodeObject('status', this.status);
  }
}
