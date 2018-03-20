import 'package:kubernetes/definitions/io/k8s/api/admissionregistration/v1alpha1/Rule.dart';
import 'package:kubernetes/base.dart';

class Initializer extends Codable {
  Initializer(this.name);

  Initializer.empty();

  @override
  void decode(Coder decoder) {
    name = decoder.decode('name');
    rules = decoder.decodeObjects('rules', () => new Rule.empty());
}

  String name;
  List<Rule> rules;

  @override
  void encode(Coder encoder) {
    encoder.encode('name', this.name);
    encoder.encodeObjects('rules', this.rules);
  }
}
