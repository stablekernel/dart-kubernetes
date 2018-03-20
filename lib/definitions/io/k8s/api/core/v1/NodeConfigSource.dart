import 'package:kubernetes/definitions/io/k8s/api/core/v1/ObjectReference.dart';
import 'package:kubernetes/base.dart';

class NodeConfigSource extends Codable {
  NodeConfigSource();

  NodeConfigSource.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    configMapRef = decoder.decode('configMapRef', inflate: () => new ObjectReference.empty());
    kind = decoder.decode('kind');
}

  String apiVersion;
  ObjectReference configMapRef;
  String kind;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encodeObject('configMapRef', this.configMapRef);
    encoder.encode('kind', this.kind);
  }
}
