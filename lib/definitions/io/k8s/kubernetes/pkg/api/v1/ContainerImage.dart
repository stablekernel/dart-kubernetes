import 'package:kubernetes/base.dart';

class ContainerImage extends Codable {
  ContainerImage(this.names);

  ContainerImage.empty();

  @override
  void decode(Coder decoder) {
    names = decoder.decode('names');
    sizeBytes = decoder.decode('sizeBytes');
}

  List<String> names;
  int sizeBytes;

  @override
  void encode(Coder encoder) {
    encoder.encode('names', this.names);
    encoder.encode('sizeBytes', this.sizeBytes);
  }
}
