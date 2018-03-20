import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/api/resource/Quantity.dart';
import 'package:kubernetes/base.dart';

class PodsMetricStatus extends Codable {
  PodsMetricStatus(this.metricName, this.currentAverageValue);

  PodsMetricStatus.empty();

  @override
  void decode(Coder decoder) {
    currentAverageValue = decoder.decode('currentAverageValue', inflate: () => new Quantity.empty());
    metricName = decoder.decode('metricName');
}

  Quantity currentAverageValue;
  String metricName;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('currentAverageValue', this.currentAverageValue);
    encoder.encode('metricName', this.metricName);
  }
}
