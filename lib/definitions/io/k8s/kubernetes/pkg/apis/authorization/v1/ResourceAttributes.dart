import 'package:kubernetes/base.dart';

class ResourceAttributes extends Codable {
  ResourceAttributes();

  ResourceAttributes.empty();

  @override
  void decode(Coder decoder) {
    group = decoder.decode('group');
    name = decoder.decode('name');
    namespace = decoder.decode('namespace');
    resource = decoder.decode('resource');
    subresource = decoder.decode('subresource');
    verb = decoder.decode('verb');
    version = decoder.decode('version');
}

  String group;
  String name;
  String namespace;
  String resource;
  String subresource;
  String verb;
  String version;

  @override
  void encode(Coder encoder) {
    encoder.encode('group', this.group);
    encoder.encode('name', this.name);
    encoder.encode('namespace', this.namespace);
    encoder.encode('resource', this.resource);
    encoder.encode('subresource', this.subresource);
    encoder.encode('verb', this.verb);
    encoder.encode('version', this.version);
  }
}
