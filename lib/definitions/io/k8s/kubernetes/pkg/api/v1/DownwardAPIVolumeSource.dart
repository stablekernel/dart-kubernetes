import 'package:kubernetes/definitions/io/k8s/api/core/v1/DownwardAPIVolumeFile.dart';
import 'package:kubernetes/base.dart';

class DownwardAPIVolumeSource extends Codable {
  DownwardAPIVolumeSource();

  DownwardAPIVolumeSource.empty();

  @override
  void decode(Coder decoder) {
    defaultMode = decoder.decode('defaultMode');
    items = decoder.decodeObjects('items', () => new DownwardAPIVolumeFile.empty());
}

  int defaultMode;
  List<DownwardAPIVolumeFile> items;

  @override
  void encode(Coder encoder) {
    encoder.encode('defaultMode', this.defaultMode);
    encoder.encodeObjects('items', this.items);
  }
}
