import 'package:kubernetes/definitions/io/k8s/api/extensions/v1beta1/IDRange.dart';
import 'package:kubernetes/base.dart';

class RunAsUserStrategyOptions extends Codable {
  RunAsUserStrategyOptions(this.rule);

  RunAsUserStrategyOptions.empty();

  @override
  void decode(Coder decoder) {
    ranges = decoder.decodeObjects('ranges', () => new IDRange.empty());
    rule = decoder.decode('rule');
}

  List<IDRange> ranges;
  String rule;

  @override
  void encode(Coder encoder) {
    encoder.encodeObjects('ranges', this.ranges);
    encoder.encode('rule', this.rule);
  }
}
