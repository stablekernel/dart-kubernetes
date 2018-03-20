import 'package:kubernetes/base.dart';

class Capabilities extends Codable {
  Capabilities();

  Capabilities.empty();

  @override
  void decode(Coder decoder) {
    add = decoder.decode('add');
    drop = decoder.decode('drop');
}

  List<String> add;
  List<String> drop;

  @override
  void encode(Coder encoder) {
    encoder.encode('add', this.add);
    encoder.encode('drop', this.drop);
  }
}
