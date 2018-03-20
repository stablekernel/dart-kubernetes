import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/api/resource/Quantity.dart';
import 'package:kubernetes/definitions/io/k8s/api/autoscaling/v2beta1/CrossVersionObjectReference.dart';
import 'package:kubernetes/base.dart';

class ObjectMetricStatus extends Codable {
  ObjectMetricStatus(this.target, this.metricName, this.currentValue);

  ObjectMetricStatus.empty();

  @override
  void decode(Coder decoder) {
    currentValue = decoder.decode('currentValue', inflate: () => new Quantity.empty());
    metricName = decoder.decode('metricName');
    target = decoder.decode('target', inflate: () => new CrossVersionObjectReference.empty());
}

  Quantity currentValue;
  String metricName;
  CrossVersionObjectReference target;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('currentValue', this.currentValue);
    encoder.encode('metricName', this.metricName);
    encoder.encodeObject('target', this.target);
  }
}
