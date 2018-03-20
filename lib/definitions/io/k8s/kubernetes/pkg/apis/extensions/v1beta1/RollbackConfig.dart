import 'package:kubernetes/base.dart';

class RollbackConfig extends Codable {
  RollbackConfig();

  RollbackConfig.empty();

  @override
  void decode(Coder decoder) {
    revision = decoder.decode('revision');
}

  int revision;

  @override
  void encode(Coder encoder) {
    encoder.encode('revision', this.revision);
  }
}
