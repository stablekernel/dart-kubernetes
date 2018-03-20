import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ObjectMeta.dart';
import 'package:kubernetes/base.dart';

class StorageClass extends Codable {
  StorageClass(this.provisioner);

  StorageClass.empty();

  @override
  void decode(Coder decoder) {
    allowVolumeExpansion = decoder.decode('allowVolumeExpansion');
    apiVersion = decoder.decode('apiVersion');
    kind = decoder.decode('kind');
    metadata = decoder.decode('metadata', inflate: () => new ObjectMeta.empty());
    mountOptions = decoder.decode('mountOptions');
    parameters = decoder.decode('parameters');
    provisioner = decoder.decode('provisioner');
    reclaimPolicy = decoder.decode('reclaimPolicy');
}

  bool allowVolumeExpansion;
  String apiVersion;
  String kind;
  ObjectMeta metadata;
  List<String> mountOptions;
  Map<String, String> parameters;
  String provisioner;
  String reclaimPolicy;

  @override
  void encode(Coder encoder) {
    encoder.encode('allowVolumeExpansion', this.allowVolumeExpansion);
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('kind', this.kind);
    encoder.encodeObject('metadata', this.metadata);
    encoder.encode('mountOptions', this.mountOptions);
    encoder.encode('parameters', this.parameters);
    encoder.encode('provisioner', this.provisioner);
    encoder.encode('reclaimPolicy', this.reclaimPolicy);
  }
}
