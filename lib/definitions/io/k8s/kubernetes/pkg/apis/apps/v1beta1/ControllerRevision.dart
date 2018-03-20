import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/runtime/RawExtension.dart';
import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ObjectMeta.dart';
import 'package:kubernetes/base.dart';

class ControllerRevision extends Codable {
  ControllerRevision(this.revision);

  ControllerRevision.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    data = decoder.decode('data', inflate: () => new RawExtension.empty());
    kind = decoder.decode('kind');
    metadata = decoder.decode('metadata', inflate: () => new ObjectMeta.empty());
    revision = decoder.decode('revision');
}

  String apiVersion;
  RawExtension data;
  String kind;
  ObjectMeta metadata;
  int revision;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encodeObject('data', this.data);
    encoder.encode('kind', this.kind);
    encoder.encodeObject('metadata', this.metadata);
    encoder.encode('revision', this.revision);
  }
}
