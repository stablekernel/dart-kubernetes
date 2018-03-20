import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ObjectMeta.dart';
import 'package:kubernetes/base.dart';

class Secret extends Codable {
  Secret();

  Secret.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    data = decoder.decode('data');
    kind = decoder.decode('kind');
    metadata = decoder.decode('metadata', inflate: () => new ObjectMeta.empty());
    stringData = decoder.decode('stringData');
    type = decoder.decode('type');
}

  String apiVersion;
  Map<String, String> data;
  String kind;
  ObjectMeta metadata;
  Map<String, String> stringData;
  String type;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('data', this.data);
    encoder.encode('kind', this.kind);
    encoder.encodeObject('metadata', this.metadata);
    encoder.encode('stringData', this.stringData);
    encoder.encode('type', this.type);
  }
}
