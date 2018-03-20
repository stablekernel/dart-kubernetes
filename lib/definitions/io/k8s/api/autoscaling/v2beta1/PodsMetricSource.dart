import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/api/resource/Quantity.dart';
import 'package:kubernetes/base.dart';

class PodsMetricSource extends Codable {
  PodsMetricSource(this.metricName, this.targetAverageValue);

  PodsMetricSource.empty();

  @override
  void decode(Coder decoder) {
    metricName = decoder.decode('metricName');
    targetAverageValue = decoder.decode('targetAverageValue', inflate: () => new Quantity.empty());
}

  String metricName;
  Quantity targetAverageValue;

  @override
  void encode(Coder encoder) {
    encoder.encode('metricName', this.metricName);
    encoder.encodeObject('targetAverageValue', this.targetAverageValue);
  }
}
