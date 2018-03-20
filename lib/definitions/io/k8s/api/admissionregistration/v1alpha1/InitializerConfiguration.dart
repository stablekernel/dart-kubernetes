import 'package:kubernetes/definitions/io/k8s/api/admissionregistration/v1alpha1/Initializer.dart';
import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ObjectMeta.dart';
import 'package:kubernetes/base.dart';

class InitializerConfiguration extends Codable {
  InitializerConfiguration();

  InitializerConfiguration.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    initializers = decoder.decodeObjects('initializers', () => new Initializer.empty());
    kind = decoder.decode('kind');
    metadata = decoder.decode('metadata', inflate: () => new ObjectMeta.empty());
}

  String apiVersion;
  List<Initializer> initializers;
  String kind;
  ObjectMeta metadata;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encodeObjects('initializers', this.initializers);
    encoder.encode('kind', this.kind);
    encoder.encodeObject('metadata', this.metadata);
  }
}
