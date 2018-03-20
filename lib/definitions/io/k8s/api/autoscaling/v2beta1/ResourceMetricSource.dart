import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/api/resource/Quantity.dart';
import 'package:kubernetes/base.dart';

class ResourceMetricSource extends Codable {
  ResourceMetricSource(this.name);

  ResourceMetricSource.empty();

  @override
  void decode(Coder decoder) {
    name = decoder.decode('name');
    targetAverageUtilization = decoder.decode('targetAverageUtilization');
    targetAverageValue = decoder.decode('targetAverageValue', inflate: () => new Quantity.empty());
}

  String name;
  int targetAverageUtilization;
  Quantity targetAverageValue;

  @override
  void encode(Coder encoder) {
    encoder.encode('name', this.name);
    encoder.encode('targetAverageUtilization', this.targetAverageUtilization);
    encoder.encodeObject('targetAverageValue', this.targetAverageValue);
  }
}
