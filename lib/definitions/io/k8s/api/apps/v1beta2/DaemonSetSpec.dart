import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/LabelSelector.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/PodTemplateSpec.dart';
import 'package:kubernetes/definitions/io/k8s/api/apps/v1beta2/DaemonSetUpdateStrategy.dart';
import 'package:kubernetes/base.dart';

class DaemonSetSpec extends Codable {
  DaemonSetSpec(this.template);

  DaemonSetSpec.empty();

  @override
  void decode(Coder decoder) {
    minReadySeconds = decoder.decode('minReadySeconds');
    revisionHistoryLimit = decoder.decode('revisionHistoryLimit');
    selector = decoder.decode('selector', inflate: () => new LabelSelector.empty());
    template = decoder.decode('template', inflate: () => new PodTemplateSpec.empty());
    updateStrategy = decoder.decode('updateStrategy', inflate: () => new DaemonSetUpdateStrategy.empty());
}

  int minReadySeconds;
  int revisionHistoryLimit;
  LabelSelector selector;
  PodTemplateSpec template;
  DaemonSetUpdateStrategy updateStrategy;

  @override
  void encode(Coder encoder) {
    encoder.encode('minReadySeconds', this.minReadySeconds);
    encoder.encode('revisionHistoryLimit', this.revisionHistoryLimit);
    encoder.encodeObject('selector', this.selector);
    encoder.encodeObject('template', this.template);
    encoder.encodeObject('updateStrategy', this.updateStrategy);
  }
}
