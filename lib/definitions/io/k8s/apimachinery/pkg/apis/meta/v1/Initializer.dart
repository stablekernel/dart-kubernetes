import 'package:kubernetes/base.dart';

class Initializer extends Codable {
  Initializer(this.name);

  Initializer.empty();

  @override
  void decode(Coder decoder) {
    name = decoder.decode('name');
}

  String name;

  @override
  void encode(Coder encoder) {
    encoder.encode('name', this.name);
  }
}
