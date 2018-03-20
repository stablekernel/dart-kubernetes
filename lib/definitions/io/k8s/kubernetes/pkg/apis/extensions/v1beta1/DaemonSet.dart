import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ObjectMeta.dart';
import 'package:kubernetes/definitions/io/k8s/api/extensions/v1beta1/DaemonSetSpec.dart';
import 'package:kubernetes/definitions/io/k8s/api/extensions/v1beta1/DaemonSetStatus.dart';
import 'package:kubernetes/base.dart';

class DaemonSet extends Codable {
  DaemonSet();

  DaemonSet.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    kind = decoder.decode('kind');
    metadata = decoder.decode('metadata', inflate: () => new ObjectMeta.empty());
    spec = decoder.decode('spec', inflate: () => new DaemonSetSpec.empty());
    status = decoder.decode('status', inflate: () => new DaemonSetStatus.empty());
}

  String apiVersion;
  String kind;
  ObjectMeta metadata;
  DaemonSetSpec spec;
  DaemonSetStatus status;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('kind', this.kind);
    encoder.encodeObject('metadata', this.metadata);
    encoder.encodeObject('spec', this.spec);
    encoder.encodeObject('status', this.status);
  }
}
