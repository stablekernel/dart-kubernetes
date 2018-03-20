import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/runtime/RawExtension.dart';
import 'package:kubernetes/base.dart';

class WatchEvent extends Codable {
  WatchEvent(this.type, this.object);

  WatchEvent.empty();

  @override
  void decode(Coder decoder) {
    object = decoder.decode('object', inflate: () => new RawExtension.empty());
    type = decoder.decode('type');
}

  RawExtension object;
  String type;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('object', this.object);
    encoder.encode('type', this.type);
  }
}
