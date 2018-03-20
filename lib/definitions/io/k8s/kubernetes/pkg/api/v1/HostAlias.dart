import 'package:kubernetes/base.dart';

class HostAlias extends Codable {
  HostAlias();

  HostAlias.empty();

  @override
  void decode(Coder decoder) {
    hostnames = decoder.decode('hostnames');
    ip = decoder.decode('ip');
}

  List<String> hostnames;
  String ip;

  @override
  void encode(Coder encoder) {
    encoder.encode('hostnames', this.hostnames);
    encoder.encode('ip', this.ip);
  }
}
