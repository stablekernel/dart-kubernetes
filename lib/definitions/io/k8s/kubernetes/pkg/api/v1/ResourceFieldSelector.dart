import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/api/resource/Quantity.dart';
import 'package:kubernetes/base.dart';

class ResourceFieldSelector extends Codable {
  ResourceFieldSelector(this.resource);

  ResourceFieldSelector.empty();

  @override
  void decode(Coder decoder) {
    containerName = decoder.decode('containerName');
    divisor = decoder.decode('divisor', inflate: () => new Quantity.empty());
    resource = decoder.decode('resource');
}

  String containerName;
  Quantity divisor;
  String resource;

  @override
  void encode(Coder encoder) {
    encoder.encode('containerName', this.containerName);
    encoder.encodeObject('divisor', this.divisor);
    encoder.encode('resource', this.resource);
  }
}
