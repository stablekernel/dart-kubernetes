import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ObjectMeta.dart';
import 'package:kubernetes/definitions/io/k8s/kube-aggregator/pkg/apis/apiregistration/v1beta1/APIServiceSpec.dart';
import 'package:kubernetes/definitions/io/k8s/kube-aggregator/pkg/apis/apiregistration/v1beta1/APIServiceStatus.dart';
import 'package:kubernetes/base.dart';

class APIService extends Codable {
  APIService();

  APIService.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    kind = decoder.decode('kind');
    metadata = decoder.decode('metadata', inflate: () => new ObjectMeta.empty());
    spec = decoder.decode('spec', inflate: () => new APIServiceSpec.empty());
    status = decoder.decode('status', inflate: () => new APIServiceStatus.empty());
}

  String apiVersion;
  String kind;
  ObjectMeta metadata;
  APIServiceSpec spec;
  APIServiceStatus status;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('kind', this.kind);
    encoder.encodeObject('metadata', this.metadata);
    encoder.encodeObject('spec', this.spec);
    encoder.encodeObject('status', this.status);
  }
}
