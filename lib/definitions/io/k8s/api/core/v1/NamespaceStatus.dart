import 'package:kubernetes/base.dart';

class NamespaceStatus extends Codable {
  NamespaceStatus();

  NamespaceStatus.empty();

  @override
  void decode(Coder decoder) {
    phase = decoder.decode('phase');
}

  String phase;

  @override
  void encode(Coder encoder) {
    encoder.encode('phase', this.phase);
  }
}
