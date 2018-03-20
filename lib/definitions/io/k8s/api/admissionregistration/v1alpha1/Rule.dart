import 'package:kubernetes/base.dart';

class Rule extends Codable {
  Rule();

  Rule.empty();

  @override
  void decode(Coder decoder) {
    apiGroups = decoder.decode('apiGroups');
    apiVersions = decoder.decode('apiVersions');
    resources = decoder.decode('resources');
}

  List<String> apiGroups;
  List<String> apiVersions;
  List<String> resources;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiGroups', this.apiGroups);
    encoder.encode('apiVersions', this.apiVersions);
    encoder.encode('resources', this.resources);
  }
}
