import 'package:kubernetes/definitions/io/k8s/api/core/v1/LocalObjectReference.dart';
import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ObjectMeta.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/ObjectReference.dart';
import 'package:kubernetes/base.dart';

class ServiceAccount extends Codable {
  ServiceAccount();

  ServiceAccount.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    automountServiceAccountToken = decoder.decode('automountServiceAccountToken');
    imagePullSecrets = decoder.decodeObjects('imagePullSecrets', () => new LocalObjectReference.empty());
    kind = decoder.decode('kind');
    metadata = decoder.decode('metadata', inflate: () => new ObjectMeta.empty());
    secrets = decoder.decodeObjects('secrets', () => new ObjectReference.empty());
}

  String apiVersion;
  bool automountServiceAccountToken;
  List<LocalObjectReference> imagePullSecrets;
  String kind;
  ObjectMeta metadata;
  List<ObjectReference> secrets;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('automountServiceAccountToken', this.automountServiceAccountToken);
    encoder.encodeObjects('imagePullSecrets', this.imagePullSecrets);
    encoder.encode('kind', this.kind);
    encoder.encodeObject('metadata', this.metadata);
    encoder.encodeObjects('secrets', this.secrets);
  }
}
