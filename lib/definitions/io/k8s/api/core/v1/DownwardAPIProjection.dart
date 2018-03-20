import 'package:kubernetes/definitions/io/k8s/api/core/v1/DownwardAPIVolumeFile.dart';
import 'package:kubernetes/base.dart';

class DownwardAPIProjection extends Codable {
  DownwardAPIProjection();

  DownwardAPIProjection.empty();

  @override
  void decode(Coder decoder) {
    items = decoder.decodeObjects('items', () => new DownwardAPIVolumeFile.empty());
}

  List<DownwardAPIVolumeFile> items;

  @override
  void encode(Coder encoder) {
    encoder.encodeObjects('items', this.items);
  }
}
