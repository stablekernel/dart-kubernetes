import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ObjectMeta.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/ResourceQuotaSpec.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/ResourceQuotaStatus.dart';
import 'package:kubernetes/base.dart';

class ResourceQuota extends Codable {
  ResourceQuota();

  ResourceQuota.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    kind = decoder.decode('kind');
    metadata = decoder.decode('metadata', inflate: () => new ObjectMeta.empty());
    spec = decoder.decode('spec', inflate: () => new ResourceQuotaSpec.empty());
    status = decoder.decode('status', inflate: () => new ResourceQuotaStatus.empty());
}

  String apiVersion;
  String kind;
  ObjectMeta metadata;
  ResourceQuotaSpec spec;
  ResourceQuotaStatus status;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('kind', this.kind);
    encoder.encodeObject('metadata', this.metadata);
    encoder.encodeObject('spec', this.spec);
    encoder.encodeObject('status', this.status);
  }
}
