import 'package:kubernetes/base.dart';

class ObjectFieldSelector extends Codable {
  ObjectFieldSelector(this.fieldPath);

  ObjectFieldSelector.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    fieldPath = decoder.decode('fieldPath');
}

  String apiVersion;
  String fieldPath;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('fieldPath', this.fieldPath);
  }
}
