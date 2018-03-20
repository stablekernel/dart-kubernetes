import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ObjectMeta.dart';
import 'package:kubernetes/definitions/io/k8s/api/autoscaling/v1/ScaleSpec.dart';
import 'package:kubernetes/definitions/io/k8s/api/autoscaling/v1/ScaleStatus.dart';
import 'package:kubernetes/base.dart';

class Scale extends Codable {
  Scale();

  Scale.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    kind = decoder.decode('kind');
    metadata = decoder.decode('metadata', inflate: () => new ObjectMeta.empty());
    spec = decoder.decode('spec', inflate: () => new ScaleSpec.empty());
    status = decoder.decode('status', inflate: () => new ScaleStatus.empty());
}

  String apiVersion;
  String kind;
  ObjectMeta metadata;
  ScaleSpec spec;
  ScaleStatus status;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('kind', this.kind);
    encoder.encodeObject('metadata', this.metadata);
    encoder.encodeObject('spec', this.spec);
    encoder.encodeObject('status', this.status);
  }
}
