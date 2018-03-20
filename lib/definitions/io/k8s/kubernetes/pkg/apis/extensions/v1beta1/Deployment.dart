import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ObjectMeta.dart';
import 'package:kubernetes/definitions/io/k8s/api/extensions/v1beta1/DeploymentSpec.dart';
import 'package:kubernetes/definitions/io/k8s/api/extensions/v1beta1/DeploymentStatus.dart';
import 'package:kubernetes/base.dart';

class Deployment extends Codable {
  Deployment();

  Deployment.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    kind = decoder.decode('kind');
    metadata = decoder.decode('metadata', inflate: () => new ObjectMeta.empty());
    spec = decoder.decode('spec', inflate: () => new DeploymentSpec.empty());
    status = decoder.decode('status', inflate: () => new DeploymentStatus.empty());
}

  String apiVersion;
  String kind;
  ObjectMeta metadata;
  DeploymentSpec spec;
  DeploymentStatus status;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('kind', this.kind);
    encoder.encodeObject('metadata', this.metadata);
    encoder.encodeObject('spec', this.spec);
    encoder.encodeObject('status', this.status);
  }
}
