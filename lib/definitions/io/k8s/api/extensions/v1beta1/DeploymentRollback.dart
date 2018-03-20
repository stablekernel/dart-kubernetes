import 'package:kubernetes/definitions/io/k8s/api/extensions/v1beta1/RollbackConfig.dart';
import 'package:kubernetes/base.dart';

class DeploymentRollback extends Codable {
  DeploymentRollback(this.name, this.rollbackTo);

  DeploymentRollback.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    kind = decoder.decode('kind');
    name = decoder.decode('name');
    rollbackTo = decoder.decode('rollbackTo', inflate: () => new RollbackConfig.empty());
    updatedAnnotations = decoder.decode('updatedAnnotations');
}

  String apiVersion;
  String kind;
  String name;
  RollbackConfig rollbackTo;
  Map<String, String> updatedAnnotations;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('kind', this.kind);
    encoder.encode('name', this.name);
    encoder.encodeObject('rollbackTo', this.rollbackTo);
    encoder.encode('updatedAnnotations', this.updatedAnnotations);
  }
}
