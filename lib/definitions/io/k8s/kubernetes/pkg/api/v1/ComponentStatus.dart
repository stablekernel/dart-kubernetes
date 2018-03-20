import 'package:kubernetes/definitions/io/k8s/api/core/v1/ComponentCondition.dart';
import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ObjectMeta.dart';
import 'package:kubernetes/base.dart';

class ComponentStatus extends Codable {
  ComponentStatus();

  ComponentStatus.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    conditions = decoder.decodeObjects('conditions', () => new ComponentCondition.empty());
    kind = decoder.decode('kind');
    metadata = decoder.decode('metadata', inflate: () => new ObjectMeta.empty());
}

  String apiVersion;
  List<ComponentCondition> conditions;
  String kind;
  ObjectMeta metadata;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encodeObjects('conditions', this.conditions);
    encoder.encode('kind', this.kind);
    encoder.encodeObject('metadata', this.metadata);
  }
}
