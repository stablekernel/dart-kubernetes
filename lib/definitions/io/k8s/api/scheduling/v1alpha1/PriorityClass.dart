import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ObjectMeta.dart';
import 'package:kubernetes/base.dart';

class PriorityClass extends Codable {
  PriorityClass(this.value);

  PriorityClass.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    description = decoder.decode('description');
    globalDefault = decoder.decode('globalDefault');
    kind = decoder.decode('kind');
    metadata = decoder.decode('metadata', inflate: () => new ObjectMeta.empty());
    value = decoder.decode('value');
}

  String apiVersion;
  String description;
  bool globalDefault;
  String kind;
  ObjectMeta metadata;
  int value;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('description', this.description);
    encoder.encode('globalDefault', this.globalDefault);
    encoder.encode('kind', this.kind);
    encoder.encodeObject('metadata', this.metadata);
    encoder.encode('value', this.value);
  }
}
