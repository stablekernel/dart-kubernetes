import 'package:kubernetes/base.dart';

class CustomResourceDefinitionNames extends Codable {
  CustomResourceDefinitionNames(this.plural, this.kind);

  CustomResourceDefinitionNames.empty();

  @override
  void decode(Coder decoder) {
    kind = decoder.decode('kind');
    listKind = decoder.decode('listKind');
    plural = decoder.decode('plural');
    shortNames = decoder.decode('shortNames');
    singular = decoder.decode('singular');
}

  String kind;
  String listKind;
  String plural;
  List<String> shortNames;
  String singular;

  @override
  void encode(Coder encoder) {
    encoder.encode('kind', this.kind);
    encoder.encode('listKind', this.listKind);
    encoder.encode('plural', this.plural);
    encoder.encode('shortNames', this.shortNames);
    encoder.encode('singular', this.singular);
  }
}
