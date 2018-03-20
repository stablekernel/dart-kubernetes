import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/api/resource/Quantity.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/PersistentVolumeClaimCondition.dart';
import 'package:kubernetes/base.dart';

class PersistentVolumeClaimStatus extends Codable {
  PersistentVolumeClaimStatus();

  PersistentVolumeClaimStatus.empty();

  @override
  void decode(Coder decoder) {
    accessModes = decoder.decode('accessModes');
    capacity = decoder.decodeObjectMap('capacity', () => new Quantity.empty());
    conditions = decoder.decodeObjects('conditions', () => new PersistentVolumeClaimCondition.empty());
    phase = decoder.decode('phase');
}

  List<String> accessModes;
  Map<String, Quantity> capacity;
  List<PersistentVolumeClaimCondition> conditions;
  String phase;

  @override
  void encode(Coder encoder) {
    encoder.encode('accessModes', this.accessModes);
    encoder.encodeObjectMap('capacity', this.capacity);
    encoder.encodeObjects('conditions', this.conditions);
    encoder.encode('phase', this.phase);
  }
}
