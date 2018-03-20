import 'package:kubernetes/base.dart';

class CertificateSigningRequestSpec extends Codable {
  CertificateSigningRequestSpec(this.request);

  CertificateSigningRequestSpec.empty();

  @override
  void decode(Coder decoder) {
    extra = decoder.decode('extra');
    groups = decoder.decode('groups');
    request = decoder.decode('request');
    uid = decoder.decode('uid');
    usages = decoder.decode('usages');
    username = decoder.decode('username');
}

  Map<String, List<String>> extra;
  List<String> groups;
  String request;
  String uid;
  List<String> usages;
  String username;

  @override
  void encode(Coder encoder) {
    encoder.encode('extra', this.extra);
    encoder.encode('groups', this.groups);
    encoder.encode('request', this.request);
    encoder.encode('uid', this.uid);
    encoder.encode('usages', this.usages);
    encoder.encode('username', this.username);
  }
}
