import 'package:kubernetes/base.dart';

class LabelSelectorRequirement extends Codable {
  LabelSelectorRequirement(this.key, this.operator_);

  LabelSelectorRequirement.empty();

  @override
  void decode(Coder decoder) {
    key = decoder.decode('key');
    operator_ = decoder.decode('operator');
    values = decoder.decode('values');
}

  String key;
  String operator_;
  List<String> values;

  @override
  void encode(Coder encoder) {
    encoder.encode('key', this.key);
    encoder.encode('operator', this.operator_);
    encoder.encode('values', this.values);
  }
}
