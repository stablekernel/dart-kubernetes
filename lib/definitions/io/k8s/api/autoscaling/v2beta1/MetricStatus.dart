import 'package:kubernetes/definitions/io/k8s/api/autoscaling/v2beta1/ObjectMetricStatus.dart';
import 'package:kubernetes/definitions/io/k8s/api/autoscaling/v2beta1/PodsMetricStatus.dart';
import 'package:kubernetes/definitions/io/k8s/api/autoscaling/v2beta1/ResourceMetricStatus.dart';
import 'package:kubernetes/base.dart';

class MetricStatus extends Codable {
  MetricStatus(this.type);

  MetricStatus.empty();

  @override
  void decode(Coder decoder) {
    object = decoder.decode('object', inflate: () => new ObjectMetricStatus.empty());
    pods = decoder.decode('pods', inflate: () => new PodsMetricStatus.empty());
    resource = decoder.decode('resource', inflate: () => new ResourceMetricStatus.empty());
    type = decoder.decode('type');
}

  ObjectMetricStatus object;
  PodsMetricStatus pods;
  ResourceMetricStatus resource;
  String type;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('object', this.object);
    encoder.encodeObject('pods', this.pods);
    encoder.encodeObject('resource', this.resource);
    encoder.encode('type', this.type);
  }
}
