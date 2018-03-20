import 'package:kubernetes/definitions/io/k8s/api/core/v1/DaemonEndpoint.dart';
import 'package:kubernetes/base.dart';

class NodeDaemonEndpoints extends Codable {
  NodeDaemonEndpoints();

  NodeDaemonEndpoints.empty();

  @override
  void decode(Coder decoder) {
    kubeletEndpoint = decoder.decode('kubeletEndpoint', inflate: () => new DaemonEndpoint.empty());
}

  DaemonEndpoint kubeletEndpoint;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('kubeletEndpoint', this.kubeletEndpoint);
  }
}
