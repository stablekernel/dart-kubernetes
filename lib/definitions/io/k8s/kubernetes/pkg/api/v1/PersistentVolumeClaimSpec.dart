import 'package:kubernetes/definitions/io/k8s/api/core/v1/ResourceRequirements.dart';
import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/LabelSelector.dart';
import 'package:kubernetes/base.dart';

class PersistentVolumeClaimSpec extends Codable {
  PersistentVolumeClaimSpec();

  PersistentVolumeClaimSpec.empty();

  @override
  void decode(Coder decoder) {
    accessModes = decoder.decode('accessModes');
    resources = decoder.decode('resources', inflate: () => new ResourceRequirements.empty());
    selector = decoder.decode('selector', inflate: () => new LabelSelector.empty());
    storageClassName = decoder.decode('storageClassName');
    volumeName = decoder.decode('volumeName');
}

  List<String> accessModes;
  ResourceRequirements resources;
  LabelSelector selector;
  String storageClassName;
  String volumeName;

  @override
  void encode(Coder encoder) {
    encoder.encode('accessModes', this.accessModes);
    encoder.encodeObject('resources', this.resources);
    encoder.encodeObject('selector', this.selector);
    encoder.encode('storageClassName', this.storageClassName);
    encoder.encode('volumeName', this.volumeName);
  }
}
