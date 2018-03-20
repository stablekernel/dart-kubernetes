import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/api/resource/Quantity.dart';
import 'package:kubernetes/base.dart';

class ResourceQuotaSpec extends Codable {
  ResourceQuotaSpec();

  ResourceQuotaSpec.empty();

  @override
  void decode(Coder decoder) {
    hard = decoder.decodeObjectMap('hard', () => new Quantity.empty());
    scopes = decoder.decode('scopes');
}

  Map<String, Quantity> hard;
  List<String> scopes;

  @override
  void encode(Coder encoder) {
    encoder.encodeObjectMap('hard', this.hard);
    encoder.encode('scopes', this.scopes);
  }
}
