import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/LabelSelectorRequirement.dart';
import 'package:kubernetes/base.dart';

class LabelSelector extends Codable {
  LabelSelector();

  LabelSelector.empty();

  @override
  void decode(Coder decoder) {
    matchExpressions = decoder.decodeObjects('matchExpressions', () => new LabelSelectorRequirement.empty());
    matchLabels = decoder.decode('matchLabels');
}

  List<LabelSelectorRequirement> matchExpressions;
  Map<String, String> matchLabels;

  @override
  void encode(Coder encoder) {
    encoder.encodeObjects('matchExpressions', this.matchExpressions);
    encoder.encode('matchLabels', this.matchLabels);
  }
}
