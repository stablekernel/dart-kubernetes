import 'package:kubernetes/base.dart';

class ObjectReference extends Codable {
  ObjectReference();

  ObjectReference.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    fieldPath = decoder.decode('fieldPath');
    kind = decoder.decode('kind');
    name = decoder.decode('name');
    namespace = decoder.decode('namespace');
    resourceVersion = decoder.decode('resourceVersion');
    uid = decoder.decode('uid');
}

  String apiVersion;
  String fieldPath;
  String kind;
  String name;
  String namespace;
  String resourceVersion;
  String uid;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('fieldPath', this.fieldPath);
    encoder.encode('kind', this.kind);
    encoder.encode('name', this.name);
    encoder.encode('namespace', this.namespace);
    encoder.encode('resourceVersion', this.resourceVersion);
    encoder.encode('uid', this.uid);
  }
}
