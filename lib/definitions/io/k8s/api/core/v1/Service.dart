import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ObjectMeta.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/ServiceSpec.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/ServiceStatus.dart';
import 'package:kubernetes/base.dart';

class Service extends Codable {
  Service();

  Service.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    kind = decoder.decode('kind');
    metadata = decoder.decode('metadata', inflate: () => new ObjectMeta.empty());
    spec = decoder.decode('spec', inflate: () => new ServiceSpec.empty());
    status = decoder.decode('status', inflate: () => new ServiceStatus.empty());
}

  String apiVersion;
  String kind;
  ObjectMeta metadata;
  ServiceSpec spec;
  ServiceStatus status;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('kind', this.kind);
    encoder.encodeObject('metadata', this.metadata);
    encoder.encodeObject('spec', this.spec);
    encoder.encodeObject('status', this.status);
  }
}
