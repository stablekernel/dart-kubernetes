import 'package:kubernetes/base.dart';

class NamespaceSpec extends Codable {
  NamespaceSpec();

  NamespaceSpec.empty();

  @override
  void decode(Coder decoder) {
    finalizers = decoder.decode('finalizers');
}

  List<String> finalizers;

  @override
  void encode(Coder encoder) {
    encoder.encode('finalizers', this.finalizers);
  }
}
