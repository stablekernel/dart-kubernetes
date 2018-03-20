import 'package:kubernetes/base.dart';

class APIResource extends Codable {
  APIResource(this.name, this.singularName, this.namespaced, this.kind, this.verbs);

  APIResource.empty();

  @override
  void decode(Coder decoder) {
    categories = decoder.decode('categories');
    group = decoder.decode('group');
    kind = decoder.decode('kind');
    name = decoder.decode('name');
    namespaced = decoder.decode('namespaced');
    shortNames = decoder.decode('shortNames');
    singularName = decoder.decode('singularName');
    verbs = decoder.decode('verbs');
    version = decoder.decode('version');
}

  List<String> categories;
  String group;
  String kind;
  String name;
  bool namespaced;
  List<String> shortNames;
  String singularName;
  List<String> verbs;
  String version;

  @override
  void encode(Coder encoder) {
    encoder.encode('categories', this.categories);
    encoder.encode('group', this.group);
    encoder.encode('kind', this.kind);
    encoder.encode('name', this.name);
    encoder.encode('namespaced', this.namespaced);
    encoder.encode('shortNames', this.shortNames);
    encoder.encode('singularName', this.singularName);
    encoder.encode('verbs', this.verbs);
    encoder.encode('version', this.version);
  }
}
