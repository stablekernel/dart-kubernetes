import 'package:kubernetes/definitions/io/k8s/api/core/v1/VolumeProjection.dart';
import 'package:kubernetes/base.dart';

class ProjectedVolumeSource extends Codable {
  ProjectedVolumeSource(this.sources);

  ProjectedVolumeSource.empty();

  @override
  void decode(Coder decoder) {
    defaultMode = decoder.decode('defaultMode');
    sources = decoder.decodeObjects('sources', () => new VolumeProjection.empty());
}

  int defaultMode;
  List<VolumeProjection> sources;

  @override
  void encode(Coder encoder) {
    encoder.encode('defaultMode', this.defaultMode);
    encoder.encodeObjects('sources', this.sources);
  }
}
