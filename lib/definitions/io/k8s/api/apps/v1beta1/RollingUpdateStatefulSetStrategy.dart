import 'package:kubernetes/base.dart';

class RollingUpdateStatefulSetStrategy extends Codable {
  RollingUpdateStatefulSetStrategy();

  RollingUpdateStatefulSetStrategy.empty();

  @override
  void decode(Coder decoder) {
    partition = decoder.decode('partition');
}

  int partition;

  @override
  void encode(Coder encoder) {
    encoder.encode('partition', this.partition);
  }
}
