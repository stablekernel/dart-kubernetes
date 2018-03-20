import 'package:kubernetes/base.dart';

class DaemonEndpoint extends Codable {
  DaemonEndpoint(this.Port);

  DaemonEndpoint.empty();

  @override
  void decode(Coder decoder) {
    Port = decoder.decode('Port');
}

  int Port;

  @override
  void encode(Coder encoder) {
    encoder.encode('Port', this.Port);
  }
}
