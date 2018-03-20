import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/LabelSelector.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/PodTemplateSpec.dart';
import 'package:kubernetes/base.dart';

class JobSpec extends Codable {
  JobSpec(this.template);

  JobSpec.empty();

  @override
  void decode(Coder decoder) {
    activeDeadlineSeconds = decoder.decode('activeDeadlineSeconds');
    backoffLimit = decoder.decode('backoffLimit');
    completions = decoder.decode('completions');
    manualSelector = decoder.decode('manualSelector');
    parallelism = decoder.decode('parallelism');
    selector = decoder.decode('selector', inflate: () => new LabelSelector.empty());
    template = decoder.decode('template', inflate: () => new PodTemplateSpec.empty());
}

  int activeDeadlineSeconds;
  int backoffLimit;
  int completions;
  bool manualSelector;
  int parallelism;
  LabelSelector selector;
  PodTemplateSpec template;

  @override
  void encode(Coder encoder) {
    encoder.encode('activeDeadlineSeconds', this.activeDeadlineSeconds);
    encoder.encode('backoffLimit', this.backoffLimit);
    encoder.encode('completions', this.completions);
    encoder.encode('manualSelector', this.manualSelector);
    encoder.encode('parallelism', this.parallelism);
    encoder.encodeObject('selector', this.selector);
    encoder.encodeObject('template', this.template);
  }
}
