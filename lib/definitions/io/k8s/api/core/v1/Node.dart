import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ObjectMeta.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/NodeSpec.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/NodeStatus.dart';
import 'package:kubernetes/base.dart';

class Node extends Codable {
  Node();

  Node.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    kind = decoder.decode('kind');
    metadata = decoder.decode('metadata', inflate: () => new ObjectMeta.empty());
    spec = decoder.decode('spec', inflate: () => new NodeSpec.empty());
    status = decoder.decode('status', inflate: () => new NodeStatus.empty());
}

  String apiVersion;
  String kind;
  ObjectMeta metadata;
  NodeSpec spec;
  NodeStatus status;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('kind', this.kind);
    encoder.encodeObject('metadata', this.metadata);
    encoder.encodeObject('spec', this.spec);
    encoder.encodeObject('status', this.status);
  }
}
