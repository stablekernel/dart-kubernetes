import 'package:kubernetes/base.dart';

class PersistentVolumeStatus extends Codable {
  PersistentVolumeStatus();

  PersistentVolumeStatus.empty();

  @override
  void decode(Coder decoder) {
    message = decoder.decode('message');
    phase = decoder.decode('phase');
    reason = decoder.decode('reason');
}

  String message;
  String phase;
  String reason;

  @override
  void encode(Coder encoder) {
    encoder.encode('message', this.message);
    encoder.encode('phase', this.phase);
    encoder.encode('reason', this.reason);
  }
}
