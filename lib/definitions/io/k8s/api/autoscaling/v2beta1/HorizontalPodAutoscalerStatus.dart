import 'package:kubernetes/definitions/io/k8s/api/autoscaling/v2beta1/HorizontalPodAutoscalerCondition.dart';
import 'package:kubernetes/definitions/io/k8s/api/autoscaling/v2beta1/MetricStatus.dart';
import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/Time.dart';
import 'package:kubernetes/base.dart';

class HorizontalPodAutoscalerStatus extends Codable {
  HorizontalPodAutoscalerStatus(this.currentReplicas, this.desiredReplicas, this.currentMetrics, this.conditions);

  HorizontalPodAutoscalerStatus.empty();

  @override
  void decode(Coder decoder) {
    conditions = decoder.decodeObjects('conditions', () => new HorizontalPodAutoscalerCondition.empty());
    currentMetrics = decoder.decodeObjects('currentMetrics', () => new MetricStatus.empty());
    currentReplicas = decoder.decode('currentReplicas');
    desiredReplicas = decoder.decode('desiredReplicas');
    lastScaleTime = decoder.decode('lastScaleTime', inflate: () => new Time.empty());
    observedGeneration = decoder.decode('observedGeneration');
}

  List<HorizontalPodAutoscalerCondition> conditions;
  List<MetricStatus> currentMetrics;
  int currentReplicas;
  int desiredReplicas;
  Time lastScaleTime;
  int observedGeneration;

  @override
  void encode(Coder encoder) {
    encoder.encodeObjects('conditions', this.conditions);
    encoder.encodeObjects('currentMetrics', this.currentMetrics);
    encoder.encode('currentReplicas', this.currentReplicas);
    encoder.encode('desiredReplicas', this.desiredReplicas);
    encoder.encodeObject('lastScaleTime', this.lastScaleTime);
    encoder.encode('observedGeneration', this.observedGeneration);
  }
}
