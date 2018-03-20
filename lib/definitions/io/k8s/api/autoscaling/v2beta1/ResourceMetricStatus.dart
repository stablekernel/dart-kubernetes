import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/api/resource/Quantity.dart';
import 'package:kubernetes/base.dart';

class ResourceMetricStatus extends Codable {
  ResourceMetricStatus(this.name, this.currentAverageValue);

  ResourceMetricStatus.empty();

  @override
  void decode(Coder decoder) {
    currentAverageUtilization = decoder.decode('currentAverageUtilization');
    currentAverageValue = decoder.decode('currentAverageValue', inflate: () => new Quantity.empty());
    name = decoder.decode('name');
}

  int currentAverageUtilization;
  Quantity currentAverageValue;
  String name;

  @override
  void encode(Coder encoder) {
    encoder.encode('currentAverageUtilization', this.currentAverageUtilization);
    encoder.encodeObject('currentAverageValue', this.currentAverageValue);
    encoder.encode('name', this.name);
  }
}
