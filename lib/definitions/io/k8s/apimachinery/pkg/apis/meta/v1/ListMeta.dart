import 'package:kubernetes/base.dart';

class ListMeta extends Codable {
  ListMeta();

  ListMeta.empty();

  @override
  void decode(Coder decoder) {
    continue_ = decoder.decode('continue');
    resourceVersion = decoder.decode('resourceVersion');
    selfLink = decoder.decode('selfLink');
}

  String continue_;
  String resourceVersion;
  String selfLink;

  @override
  void encode(Coder encoder) {
    encoder.encode('continue', this.continue_);
    encoder.encode('resourceVersion', this.resourceVersion);
    encoder.encode('selfLink', this.selfLink);
  }
}
