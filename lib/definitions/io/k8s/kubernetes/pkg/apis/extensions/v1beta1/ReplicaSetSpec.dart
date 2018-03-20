import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/LabelSelector.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/PodTemplateSpec.dart';
import 'package:kubernetes/base.dart';

class ReplicaSetSpec extends Codable {
  ReplicaSetSpec();

  ReplicaSetSpec.empty();

  @override
  void decode(Coder decoder) {
    minReadySeconds = decoder.decode('minReadySeconds');
    replicas = decoder.decode('replicas');
    selector = decoder.decode('selector', inflate: () => new LabelSelector.empty());
    template = decoder.decode('template', inflate: () => new PodTemplateSpec.empty());
}

  int minReadySeconds;
  int replicas;
  LabelSelector selector;
  PodTemplateSpec template;

  @override
  void encode(Coder encoder) {
    encoder.encode('minReadySeconds', this.minReadySeconds);
    encoder.encode('replicas', this.replicas);
    encoder.encodeObject('selector', this.selector);
    encoder.encodeObject('template', this.template);
  }
}
