import 'package:kubernetes/base.dart';

class OwnerReference extends Codable {
  OwnerReference(this.apiVersion, this.kind, this.name, this.uid);

  OwnerReference.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    blockOwnerDeletion = decoder.decode('blockOwnerDeletion');
    controller = decoder.decode('controller');
    kind = decoder.decode('kind');
    name = decoder.decode('name');
    uid = decoder.decode('uid');
}

  String apiVersion;
  bool blockOwnerDeletion;
  bool controller;
  String kind;
  String name;
  String uid;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('blockOwnerDeletion', this.blockOwnerDeletion);
    encoder.encode('controller', this.controller);
    encoder.encode('kind', this.kind);
    encoder.encode('name', this.name);
    encoder.encode('uid', this.uid);
  }
}
