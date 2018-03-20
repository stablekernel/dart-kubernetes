import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/Time.dart';
import 'package:kubernetes/base.dart';

class PodDisruptionBudgetStatus extends Codable {
  PodDisruptionBudgetStatus(this.disruptedPods, this.disruptionsAllowed, this.currentHealthy, this.desiredHealthy, this.expectedPods);

  PodDisruptionBudgetStatus.empty();

  @override
  void decode(Coder decoder) {
    currentHealthy = decoder.decode('currentHealthy');
    desiredHealthy = decoder.decode('desiredHealthy');
    disruptedPods = decoder.decodeObjectMap('disruptedPods', () => new Time.empty());
    disruptionsAllowed = decoder.decode('disruptionsAllowed');
    expectedPods = decoder.decode('expectedPods');
    observedGeneration = decoder.decode('observedGeneration');
}

  int currentHealthy;
  int desiredHealthy;
  Map<String, Time> disruptedPods;
  int disruptionsAllowed;
  int expectedPods;
  int observedGeneration;

  @override
  void encode(Coder encoder) {
    encoder.encode('currentHealthy', this.currentHealthy);
    encoder.encode('desiredHealthy', this.desiredHealthy);
    encoder.encodeObjectMap('disruptedPods', this.disruptedPods);
    encoder.encode('disruptionsAllowed', this.disruptionsAllowed);
    encoder.encode('expectedPods', this.expectedPods);
    encoder.encode('observedGeneration', this.observedGeneration);
  }
}
