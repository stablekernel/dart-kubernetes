import 'package:kubernetes/definitions/io/k8s/api/autoscaling/v2beta1/MetricSpec.dart';
import 'package:kubernetes/definitions/io/k8s/api/autoscaling/v2beta1/CrossVersionObjectReference.dart';
import 'package:kubernetes/base.dart';

class HorizontalPodAutoscalerSpec extends Codable {
  HorizontalPodAutoscalerSpec(this.scaleTargetRef, this.maxReplicas);

  HorizontalPodAutoscalerSpec.empty();

  @override
  void decode(Coder decoder) {
    maxReplicas = decoder.decode('maxReplicas');
    metrics = decoder.decodeObjects('metrics', () => new MetricSpec.empty());
    minReplicas = decoder.decode('minReplicas');
    scaleTargetRef = decoder.decode('scaleTargetRef', inflate: () => new CrossVersionObjectReference.empty());
}

  int maxReplicas;
  List<MetricSpec> metrics;
  int minReplicas;
  CrossVersionObjectReference scaleTargetRef;

  @override
  void encode(Coder encoder) {
    encoder.encode('maxReplicas', this.maxReplicas);
    encoder.encodeObjects('metrics', this.metrics);
    encoder.encode('minReplicas', this.minReplicas);
    encoder.encodeObject('scaleTargetRef', this.scaleTargetRef);
  }
}
