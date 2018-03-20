import 'package:kubernetes/definitions/io/k8s/api/apps/v1beta2/ReplicaSetCondition.dart';
import 'package:kubernetes/base.dart';

class ReplicaSetStatus extends Codable {
  ReplicaSetStatus(this.replicas);

  ReplicaSetStatus.empty();

  @override
  void decode(Coder decoder) {
    availableReplicas = decoder.decode('availableReplicas');
    conditions = decoder.decodeObjects('conditions', () => new ReplicaSetCondition.empty());
    fullyLabeledReplicas = decoder.decode('fullyLabeledReplicas');
    observedGeneration = decoder.decode('observedGeneration');
    readyReplicas = decoder.decode('readyReplicas');
    replicas = decoder.decode('replicas');
}

  int availableReplicas;
  List<ReplicaSetCondition> conditions;
  int fullyLabeledReplicas;
  int observedGeneration;
  int readyReplicas;
  int replicas;

  @override
  void encode(Coder encoder) {
    encoder.encode('availableReplicas', this.availableReplicas);
    encoder.encodeObjects('conditions', this.conditions);
    encoder.encode('fullyLabeledReplicas', this.fullyLabeledReplicas);
    encoder.encode('observedGeneration', this.observedGeneration);
    encoder.encode('readyReplicas', this.readyReplicas);
    encoder.encode('replicas', this.replicas);
  }
}
