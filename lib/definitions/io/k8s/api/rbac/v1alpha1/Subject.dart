import 'package:kubernetes/base.dart';

class Subject extends Codable {
  Subject(this.kind, this.name);

  Subject.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    kind = decoder.decode('kind');
    name = decoder.decode('name');
    namespace = decoder.decode('namespace');
}

  String apiVersion;
  String kind;
  String name;
  String namespace;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('kind', this.kind);
    encoder.encode('name', this.name);
    encoder.encode('namespace', this.namespace);
  }
}
