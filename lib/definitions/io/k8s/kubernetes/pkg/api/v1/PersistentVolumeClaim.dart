import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ObjectMeta.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/PersistentVolumeClaimSpec.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/PersistentVolumeClaimStatus.dart';
import 'package:kubernetes/base.dart';

class PersistentVolumeClaim extends Codable {
  PersistentVolumeClaim();

  PersistentVolumeClaim.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    kind = decoder.decode('kind');
    metadata = decoder.decode('metadata', inflate: () => new ObjectMeta.empty());
    spec = decoder.decode('spec', inflate: () => new PersistentVolumeClaimSpec.empty());
    status = decoder.decode('status', inflate: () => new PersistentVolumeClaimStatus.empty());
}

  String apiVersion;
  String kind;
  ObjectMeta metadata;
  PersistentVolumeClaimSpec spec;
  PersistentVolumeClaimStatus status;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('kind', this.kind);
    encoder.encodeObject('metadata', this.metadata);
    encoder.encodeObject('spec', this.spec);
    encoder.encodeObject('status', this.status);
  }
}
