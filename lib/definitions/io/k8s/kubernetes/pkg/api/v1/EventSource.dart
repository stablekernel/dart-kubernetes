import 'package:kubernetes/base.dart';

class EventSource extends Codable {
  EventSource();

  EventSource.empty();

  @override
  void decode(Coder decoder) {
    component = decoder.decode('component');
    host = decoder.decode('host');
}

  String component;
  String host;

  @override
  void encode(Coder encoder) {
    encoder.encode('component', this.component);
    encoder.encode('host', this.host);
  }
}
