import 'package:kubernetes/base.dart';

class PolicyRule extends Codable {
  PolicyRule(this.verbs);

  PolicyRule.empty();

  @override
  void decode(Coder decoder) {
    apiGroups = decoder.decode('apiGroups');
    nonResourceURLs = decoder.decode('nonResourceURLs');
    resourceNames = decoder.decode('resourceNames');
    resources = decoder.decode('resources');
    verbs = decoder.decode('verbs');
}

  List<String> apiGroups;
  List<String> nonResourceURLs;
  List<String> resourceNames;
  List<String> resources;
  List<String> verbs;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiGroups', this.apiGroups);
    encoder.encode('nonResourceURLs', this.nonResourceURLs);
    encoder.encode('resourceNames', this.resourceNames);
    encoder.encode('resources', this.resources);
    encoder.encode('verbs', this.verbs);
  }
}
