import 'package:kubernetes/definitions/io/k8s/api/autoscaling/v2beta1/ObjectMetricSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/autoscaling/v2beta1/PodsMetricSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/autoscaling/v2beta1/ResourceMetricSource.dart';
import 'package:kubernetes/base.dart';

class MetricSpec extends Codable {
  MetricSpec(this.type);

  MetricSpec.empty();

  @override
  void decode(Coder decoder) {
    object = decoder.decode('object', inflate: () => new ObjectMetricSource.empty());
    pods = decoder.decode('pods', inflate: () => new PodsMetricSource.empty());
    resource = decoder.decode('resource', inflate: () => new ResourceMetricSource.empty());
    type = decoder.decode('type');
}

  ObjectMetricSource object;
  PodsMetricSource pods;
  ResourceMetricSource resource;
  String type;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('object', this.object);
    encoder.encodeObject('pods', this.pods);
    encoder.encodeObject('resource', this.resource);
    encoder.encode('type', this.type);
  }
}
