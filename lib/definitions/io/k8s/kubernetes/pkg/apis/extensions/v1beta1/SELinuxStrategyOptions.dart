import 'package:kubernetes/definitions/io/k8s/api/core/v1/SELinuxOptions.dart';
import 'package:kubernetes/base.dart';

class SELinuxStrategyOptions extends Codable {
  SELinuxStrategyOptions(this.rule);

  SELinuxStrategyOptions.empty();

  @override
  void decode(Coder decoder) {
    rule = decoder.decode('rule');
    seLinuxOptions = decoder.decode('seLinuxOptions', inflate: () => new SELinuxOptions.empty());
}

  String rule;
  SELinuxOptions seLinuxOptions;

  @override
  void encode(Coder encoder) {
    encoder.encode('rule', this.rule);
    encoder.encodeObject('seLinuxOptions', this.seLinuxOptions);
  }
}
