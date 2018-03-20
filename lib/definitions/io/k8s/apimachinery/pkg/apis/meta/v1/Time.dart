import 'package:kubernetes/base.dart';

//todo: This type could not fully be resolved and may require additional editing.
class Time extends Codable {
  Time(this.value);
  Time.empty();
  
  dynamic value;

  @override
  void encode(Coder encoder) {
    encoder.primitiveValue = value;
  }

  @override
  void decode(Coder decoder) {
    value = decoder.primitiveValue;
  }
}
      