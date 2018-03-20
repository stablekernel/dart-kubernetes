import 'package:kubernetes/definitions/io/k8s/api/core/v1/ClientIPConfig.dart';
import 'package:kubernetes/base.dart';

class SessionAffinityConfig extends Codable {
  SessionAffinityConfig();

  SessionAffinityConfig.empty();

  @override
  void decode(Coder decoder) {
    clientIP = decoder.decode('clientIP', inflate: () => new ClientIPConfig.empty());
}

  ClientIPConfig clientIP;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('clientIP', this.clientIP);
  }
}
