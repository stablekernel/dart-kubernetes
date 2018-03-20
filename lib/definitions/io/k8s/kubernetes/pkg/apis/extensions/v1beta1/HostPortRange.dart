import 'package:kubernetes/base.dart';

class HostPortRange extends Codable {
  HostPortRange(this.min, this.max);

  HostPortRange.empty();

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
