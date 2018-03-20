import 'package:kubernetes/base.dart';

class ClientIPConfig extends Codable {
  ClientIPConfig();

  ClientIPConfig.empty();

  @override
  void decode(Coder decoder) {
    timeoutSeconds = decoder.decode('timeoutSeconds');
}

  int timeoutSeconds;

  @override
  void encode(Coder encoder) {
    encoder.encode('timeoutSeconds', this.timeoutSeconds);
  }
}
