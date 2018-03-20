import 'package:kubernetes/base.dart';

class NonResourceRule extends Codable {
  NonResourceRule(this.verbs);

  NonResourceRule.empty();

  @override
  void decode(Coder decoder) {
    nonResourceURLs = decoder.decode('nonResourceURLs');
    verbs = decoder.decode('verbs');
}

  List<String> nonResourceURLs;
  List<String> verbs;

  @override
  void encode(Coder encoder) {
    encoder.encode('nonResourceURLs', this.nonResourceURLs);
    encoder.encode('verbs', this.verbs);
  }
}
