import 'package:kubernetes/base.dart';

class RoleRef extends Codable {
  RoleRef(this.apiGroup, this.kind, this.name);

  RoleRef.empty();

  @override
  void decode(Coder decoder) {
    apiGroup = decoder.decode('apiGroup');
    kind = decoder.decode('kind');
    name = decoder.decode('name');
}

  String apiGroup;
  String kind;
  String name;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiGroup', this.apiGroup);
    encoder.encode('kind', this.kind);
    encoder.encode('name', this.name);
  }
}
