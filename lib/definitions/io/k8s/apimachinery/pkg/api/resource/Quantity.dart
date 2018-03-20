import 'package:kubernetes/base.dart';

//todo: This type could not fully be resolved and may require additional editing.
class Quantity extends Codable {
  Quantity(this.value);
  Quantity.empty();
  
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
      