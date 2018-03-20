import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/Time.dart';
import 'package:kubernetes/base.dart';

class HorizontalPodAutoscalerStatus extends Codable {
  HorizontalPodAutoscalerStatus(this.currentReplicas, this.desiredReplicas);

  HorizontalPodAutoscalerStatus.empty();

  @override
  void decode(Coder decoder) {
    currentCPUUtilizationPercentage = decoder.decode('currentCPUUtilizationPercentage');
    currentReplicas = decoder.decode('currentReplicas');
    desiredReplicas = decoder.decode('desiredReplicas');
    lastScaleTime = decoder.decode('lastScaleTime', inflate: () => new Time.empty());
    observedGeneration = decoder.decode('observedGeneration');
}

  int currentCPUUtilizationPercentage;
  int currentReplicas;
  int desiredReplicas;
  Time lastScaleTime;
  int observedGeneration;

  @override
  void encode(Coder encoder) {
    encoder.encode('currentCPUUtilizationPercentage', this.currentCPUUtilizationPercentage);
    encoder.encode('currentReplicas', this.currentReplicas);
    encoder.encode('desiredReplicas', this.desiredReplicas);
    encoder.encodeObject('lastScaleTime', this.lastScaleTime);
    encoder.encode('observedGeneration', this.observedGeneration);
  }
}
