import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/util/intstr/IntOrString.dart';
import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/LabelSelector.dart';
import 'package:kubernetes/base.dart';

class PodDisruptionBudgetSpec extends Codable {
  PodDisruptionBudgetSpec();

  PodDisruptionBudgetSpec.empty();

  @override
  void decode(Coder decoder) {
    maxUnavailable = decoder.decode('maxUnavailable', inflate: () => new IntOrString.empty());
    minAvailable = decoder.decode('minAvailable', inflate: () => new IntOrString.empty());
    selector = decoder.decode('selector', inflate: () => new LabelSelector.empty());
}

  IntOrString maxUnavailable;
  IntOrString minAvailable;
  LabelSelector selector;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('maxUnavailable', this.maxUnavailable);
    encoder.encodeObject('minAvailable', this.minAvailable);
    encoder.encodeObject('selector', this.selector);
  }
}
