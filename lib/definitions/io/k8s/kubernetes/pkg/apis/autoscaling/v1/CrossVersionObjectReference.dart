import 'package:kubernetes/base.dart';

class CrossVersionObjectReference extends Codable {
  CrossVersionObjectReference(this.kind, this.name);

  CrossVersionObjectReference.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    kind = decoder.decode('kind');
    name = decoder.decode('name');
}

  String apiVersion;
  String kind;
  String name;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('kind', this.kind);
    encoder.encode('name', this.name);
  }
}
