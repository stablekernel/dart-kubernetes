import 'package:kubernetes/definitions/io/k8s/api/autoscaling/v2beta1/CrossVersionObjectReference.dart';
import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/api/resource/Quantity.dart';
import 'package:kubernetes/base.dart';

class ObjectMetricSource extends Codable {
  ObjectMetricSource(this.target, this.metricName, this.targetValue);

  ObjectMetricSource.empty();

  @override
  void decode(Coder decoder) {
    metricName = decoder.decode('metricName');
    target = decoder.decode('target', inflate: () => new CrossVersionObjectReference.empty());
    targetValue = decoder.decode('targetValue', inflate: () => new Quantity.empty());
}

  String metricName;
  CrossVersionObjectReference target;
  Quantity targetValue;

  @override
  void encode(Coder encoder) {
    encoder.encode('metricName', this.metricName);
    encoder.encodeObject('target', this.target);
    encoder.encodeObject('targetValue', this.targetValue);
  }
}
