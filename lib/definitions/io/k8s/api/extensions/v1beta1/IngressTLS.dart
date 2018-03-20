import 'package:kubernetes/base.dart';

class IngressTLS extends Codable {
  IngressTLS();

  IngressTLS.empty();

  @override
  void decode(Coder decoder) {
    hosts = decoder.decode('hosts');
    secretName = decoder.decode('secretName');
}

  List<String> hosts;
  String secretName;

  @override
  void encode(Coder encoder) {
    encoder.encode('hosts', this.hosts);
    encoder.encode('secretName', this.secretName);
  }
}
