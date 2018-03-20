import 'package:kubernetes/base.dart';

class ResourceRule extends Codable {
  ResourceRule(this.verbs);

  ResourceRule.empty();

  @override
  void decode(Coder decoder) {
    apiGroups = decoder.decode('apiGroups');
    resourceNames = decoder.decode('resourceNames');
    resources = decoder.decode('resources');
    verbs = decoder.decode('verbs');
}

  List<String> apiGroups;
  List<String> resourceNames;
  List<String> resources;
  List<String> verbs;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiGroups', this.apiGroups);
    encoder.encode('resourceNames', this.resourceNames);
    encoder.encode('resources', this.resources);
    encoder.encode('verbs', this.verbs);
  }
}
