import 'package:kubernetes/definitions/io/k8s/api/core/v1/PodTemplateSpec.dart';
import 'package:kubernetes/base.dart';

class ReplicationControllerSpec extends Codable {
  ReplicationControllerSpec();

  ReplicationControllerSpec.empty();

  @override
  void decode(Coder decoder) {
    minReadySeconds = decoder.decode('minReadySeconds');
    replicas = decoder.decode('replicas');
    selector = decoder.decode('selector');
    template = decoder.decode('template', inflate: () => new PodTemplateSpec.empty());
}

  int minReadySeconds;
  int replicas;
  Map<String, String> selector;
  PodTemplateSpec template;

  @override
  void encode(Coder encoder) {
    encoder.encode('minReadySeconds', this.minReadySeconds);
    encoder.encode('replicas', this.replicas);
    encoder.encode('selector', this.selector);
    encoder.encodeObject('template', this.template);
  }
}
