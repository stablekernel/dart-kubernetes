import 'package:kubernetes/base.dart';

class UserInfo extends Codable {
  UserInfo();

  UserInfo.empty();

  @override
  void decode(Coder decoder) {
    extra = decoder.decode('extra');
    groups = decoder.decode('groups');
    uid = decoder.decode('uid');
    username = decoder.decode('username');
}

  Map<String, List<String>> extra;
  List<String> groups;
  String uid;
  String username;

  @override
  void encode(Coder encoder) {
    encoder.encode('extra', this.extra);
    encoder.encode('groups', this.groups);
    encoder.encode('uid', this.uid);
    encoder.encode('username', this.username);
  }
}
