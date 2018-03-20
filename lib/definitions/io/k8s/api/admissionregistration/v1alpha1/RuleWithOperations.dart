import 'package:kubernetes/base.dart';

class RuleWithOperations extends Codable {
  RuleWithOperations();

  RuleWithOperations.empty();

  @override
  void decode(Coder decoder) {
    apiGroups = decoder.decode('apiGroups');
    apiVersions = decoder.decode('apiVersions');
    operations = decoder.decode('operations');
    resources = decoder.decode('resources');
}

  List<String> apiGroups;
  List<String> apiVersions;
  List<String> operations;
  List<String> resources;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiGroups', this.apiGroups);
    encoder.encode('apiVersions', this.apiVersions);
    encoder.encode('operations', this.operations);
    encoder.encode('resources', this.resources);
  }
}
