import 'package:kubernetes/base.dart';

class StatefulSetStatus extends Codable {
  StatefulSetStatus(this.replicas);

  StatefulSetStatus.empty();

  @override
  void decode(Coder decoder) {
    collisionCount = decoder.decode('collisionCount');
    currentReplicas = decoder.decode('currentReplicas');
    currentRevision = decoder.decode('currentRevision');
    observedGeneration = decoder.decode('observedGeneration');
    readyReplicas = decoder.decode('readyReplicas');
    replicas = decoder.decode('replicas');
    updateRevision = decoder.decode('updateRevision');
    updatedReplicas = decoder.decode('updatedReplicas');
}

  int collisionCount;
  int currentReplicas;
  String currentRevision;
  int observedGeneration;
  int readyReplicas;
  int replicas;
  String updateRevision;
  int updatedReplicas;

  @override
  void encode(Coder encoder) {
    encoder.encode('collisionCount', this.collisionCount);
    encoder.encode('currentReplicas', this.currentReplicas);
    encoder.encode('currentRevision', this.currentRevision);
    encoder.encode('observedGeneration', this.observedGeneration);
    encoder.encode('readyReplicas', this.readyReplicas);
    encoder.encode('replicas', this.replicas);
    encoder.encode('updateRevision', this.updateRevision);
    encoder.encode('updatedReplicas', this.updatedReplicas);
  }
}
