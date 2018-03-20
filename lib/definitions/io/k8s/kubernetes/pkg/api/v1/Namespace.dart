import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ObjectMeta.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/NamespaceSpec.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/NamespaceStatus.dart';
import 'package:kubernetes/base.dart';

class Namespace extends Codable {
  Namespace();

  Namespace.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    kind = decoder.decode('kind');
    metadata = decoder.decode('metadata', inflate: () => new ObjectMeta.empty());
    spec = decoder.decode('spec', inflate: () => new NamespaceSpec.empty());
    status = decoder.decode('status', inflate: () => new NamespaceStatus.empty());
}

  String apiVersion;
  String kind;
  ObjectMeta metadata;
  NamespaceSpec spec;
  NamespaceStatus status;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('kind', this.kind);
    encoder.encodeObject('metadata', this.metadata);
    encoder.encodeObject('spec', this.spec);
    encoder.encodeObject('status', this.status);
  }
}
