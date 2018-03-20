import 'package:kubernetes/definitions/io/k8s/api/autoscaling/v1/CrossVersionObjectReference.dart';
import 'package:kubernetes/base.dart';

class HorizontalPodAutoscalerSpec extends Codable {
  HorizontalPodAutoscalerSpec(this.scaleTargetRef, this.maxReplicas);

  HorizontalPodAutoscalerSpec.empty();

  @override
  void decode(Coder decoder) {
    maxReplicas = decoder.decode('maxReplicas');
    minReplicas = decoder.decode('minReplicas');
    scaleTargetRef = decoder.decode('scaleTargetRef', inflate: () => new CrossVersionObjectReference.empty());
    targetCPUUtilizationPercentage = decoder.decode('targetCPUUtilizationPercentage');
}

  int maxReplicas;
  int minReplicas;
  CrossVersionObjectReference scaleTargetRef;
  int targetCPUUtilizationPercentage;

  @override
  void encode(Coder encoder) {
    encoder.encode('maxReplicas', this.maxReplicas);
    encoder.encode('minReplicas', this.minReplicas);
    encoder.encodeObject('scaleTargetRef', this.scaleTargetRef);
    encoder.encode('targetCPUUtilizationPercentage', this.targetCPUUtilizationPercentage);
  }
}
