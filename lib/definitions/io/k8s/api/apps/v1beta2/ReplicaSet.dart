import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ObjectMeta.dart';
import 'package:kubernetes/definitions/io/k8s/api/apps/v1beta2/ReplicaSetSpec.dart';
import 'package:kubernetes/definitions/io/k8s/api/apps/v1beta2/ReplicaSetStatus.dart';
import 'package:kubernetes/base.dart';

class ReplicaSet extends Codable {
  ReplicaSet();

  ReplicaSet.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    kind = decoder.decode('kind');
    metadata = decoder.decode('metadata', inflate: () => new ObjectMeta.empty());
    spec = decoder.decode('spec', inflate: () => new ReplicaSetSpec.empty());
    status = decoder.decode('status', inflate: () => new ReplicaSetStatus.empty());
}

  String apiVersion;
  String kind;
  ObjectMeta metadata;
  ReplicaSetSpec spec;
  ReplicaSetStatus status;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('kind', this.kind);
    encoder.encodeObject('metadata', this.metadata);
    encoder.encodeObject('spec', this.spec);
    encoder.encodeObject('status', this.status);
  }
}
