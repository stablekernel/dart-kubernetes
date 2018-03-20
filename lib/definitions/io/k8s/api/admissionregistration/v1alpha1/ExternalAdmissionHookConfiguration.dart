import 'package:kubernetes/definitions/io/k8s/api/admissionregistration/v1alpha1/ExternalAdmissionHook.dart';
import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ObjectMeta.dart';
import 'package:kubernetes/base.dart';

class ExternalAdmissionHookConfiguration extends Codable {
  ExternalAdmissionHookConfiguration();

  ExternalAdmissionHookConfiguration.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    externalAdmissionHooks = decoder.decodeObjects('externalAdmissionHooks', () => new ExternalAdmissionHook.empty());
    kind = decoder.decode('kind');
    metadata = decoder.decode('metadata', inflate: () => new ObjectMeta.empty());
}

  String apiVersion;
  List<ExternalAdmissionHook> externalAdmissionHooks;
  String kind;
  ObjectMeta metadata;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encodeObjects('externalAdmissionHooks', this.externalAdmissionHooks);
    encoder.encode('kind', this.kind);
    encoder.encodeObject('metadata', this.metadata);
  }
}
