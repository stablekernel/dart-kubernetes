import 'package:kubernetes/base.dart';

class LoadBalancerIngress extends Codable {
  LoadBalancerIngress();

  LoadBalancerIngress.empty();

  @override
  void decode(Coder decoder) {
    hostname = decoder.decode('hostname');
    ip = decoder.decode('ip');
}

  String hostname;
  String ip;

  @override
  void encode(Coder encoder) {
    encoder.encode('hostname', this.hostname);
    encoder.encode('ip', this.ip);
  }
}
