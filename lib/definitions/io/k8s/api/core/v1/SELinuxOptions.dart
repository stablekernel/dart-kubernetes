import 'package:kubernetes/base.dart';

class SELinuxOptions extends Codable {
  SELinuxOptions();

  SELinuxOptions.empty();

  @override
  void decode(Coder decoder) {
    level = decoder.decode('level');
    role = decoder.decode('role');
    type = decoder.decode('type');
    user = decoder.decode('user');
}

  String level;
  String role;
  String type;
  String user;

  @override
  void encode(Coder encoder) {
    encoder.encode('level', this.level);
    encoder.encode('role', this.role);
    encoder.encode('type', this.type);
    encoder.encode('user', this.user);
  }
}
