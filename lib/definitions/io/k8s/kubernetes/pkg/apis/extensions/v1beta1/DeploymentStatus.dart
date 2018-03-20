import 'package:kubernetes/definitions/io/k8s/api/extensions/v1beta1/DeploymentCondition.dart';
import 'package:kubernetes/base.dart';

class DeploymentStatus extends Codable {
  DeploymentStatus();

  DeploymentStatus.empty();

  @override
  void decode(Coder decoder) {
    availableReplicas = decoder.decode('availableReplicas');
    collisionCount = decoder.decode('collisionCount');
    conditions = decoder.decodeObjects('conditions', () => new DeploymentCondition.empty());
    observedGeneration = decoder.decode('observedGeneration');
    readyReplicas = decoder.decode('readyReplicas');
    replicas = decoder.decode('replicas');
    unavailableReplicas = decoder.decode('unavailableReplicas');
    updatedReplicas = decoder.decode('updatedReplicas');
}

  int availableReplicas;
  int collisionCount;
  List<DeploymentCondition> conditions;
  int observedGeneration;
  int readyReplicas;
  int replicas;
  int unavailableReplicas;
  int updatedReplicas;

  @override
  void encode(Coder encoder) {
    encoder.encode('availableReplicas', this.availableReplicas);
    encoder.encode('collisionCount', this.collisionCount);
    encoder.encodeObjects('conditions', this.conditions);
    encoder.encode('observedGeneration', this.observedGeneration);
    encoder.encode('readyReplicas', this.readyReplicas);
    encoder.encode('replicas', this.replicas);
    encoder.encode('unavailableReplicas', this.unavailableReplicas);
    encoder.encode('updatedReplicas', this.updatedReplicas);
  }
}
