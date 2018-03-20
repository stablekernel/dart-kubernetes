import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ObjectMeta.dart';
import 'package:kubernetes/definitions/io/k8s/api/autoscaling/v2beta1/HorizontalPodAutoscalerSpec.dart';
import 'package:kubernetes/definitions/io/k8s/api/autoscaling/v2beta1/HorizontalPodAutoscalerStatus.dart';
import 'package:kubernetes/base.dart';

class HorizontalPodAutoscaler extends Codable {
  HorizontalPodAutoscaler();

  HorizontalPodAutoscaler.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    kind = decoder.decode('kind');
    metadata = decoder.decode('metadata', inflate: () => new ObjectMeta.empty());
    spec = decoder.decode('spec', inflate: () => new HorizontalPodAutoscalerSpec.empty());
    status = decoder.decode('status', inflate: () => new HorizontalPodAutoscalerStatus.empty());
}

  String apiVersion;
  String kind;
  ObjectMeta metadata;
  HorizontalPodAutoscalerSpec spec;
  HorizontalPodAutoscalerStatus status;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('kind', this.kind);
    encoder.encodeObject('metadata', this.metadata);
    encoder.encodeObject('spec', this.spec);
    encoder.encodeObject('status', this.status);
  }
}
