import 'package:kubernetes/definitions/io/k8s/api/authorization/v1/NonResourceRule.dart';
import 'package:kubernetes/definitions/io/k8s/api/authorization/v1/ResourceRule.dart';
import 'package:kubernetes/base.dart';

class SubjectRulesReviewStatus extends Codable {
  SubjectRulesReviewStatus(this.resourceRules, this.nonResourceRules, this.incomplete);

  SubjectRulesReviewStatus.empty();

  @override
  void decode(Coder decoder) {
    evaluationError = decoder.decode('evaluationError');
    incomplete = decoder.decode('incomplete');
    nonResourceRules = decoder.decodeObjects('nonResourceRules', () => new NonResourceRule.empty());
    resourceRules = decoder.decodeObjects('resourceRules', () => new ResourceRule.empty());
}

  String evaluationError;
  bool incomplete;
  List<NonResourceRule> nonResourceRules;
  List<ResourceRule> resourceRules;

  @override
  void encode(Coder encoder) {
    encoder.encode('evaluationError', this.evaluationError);
    encoder.encode('incomplete', this.incomplete);
    encoder.encodeObjects('nonResourceRules', this.nonResourceRules);
    encoder.encodeObjects('resourceRules', this.resourceRules);
  }
}
