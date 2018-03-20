import 'package:kubernetes/base.dart';

class ExternalDocumentation extends Codable {
  ExternalDocumentation();

  ExternalDocumentation.empty();

  @override
  void decode(Coder decoder) {
    description = decoder.decode('description');
    url = decoder.decode('url');
}

  String description;
  String url;

  @override
  void encode(Coder encoder) {
    encoder.encode('description', this.description);
    encoder.encode('url', this.url);
  }
}
