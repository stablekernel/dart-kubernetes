import 'package:kubernetes/definitions/io/k8s/kube-aggregator/pkg/apis/apiregistration/v1beta1/APIServiceCondition.dart';
import 'package:kubernetes/base.dart';

class APIServiceStatus extends Codable {
  APIServiceStatus();

  APIServiceStatus.empty();

  @override
  void decode(Coder decoder) {
    conditions = decoder.decodeObjects('conditions', () => new APIServiceCondition.empty());
}

  List<APIServiceCondition> conditions;

  @override
  void encode(Coder encoder) {
    encoder.encodeObjects('conditions', this.conditions);
  }
}
