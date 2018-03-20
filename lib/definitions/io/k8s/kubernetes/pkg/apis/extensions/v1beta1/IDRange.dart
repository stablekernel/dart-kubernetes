import 'package:kubernetes/base.dart';

class IDRange extends Codable {
  IDRange(this.min, this.max);

  IDRange.empty();

  @override
  void decode(Coder decoder) {
    max = decoder.decode('max');
    min = decoder.decode('min');
}

  int max;
  int min;

  @override
  void encode(Coder encoder) {
    encoder.encode('max', this.max);
    encoder.encode('min', this.min);
  }
}
