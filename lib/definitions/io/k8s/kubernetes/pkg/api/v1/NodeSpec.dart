import 'package:kubernetes/definitions/io/k8s/api/core/v1/NodeConfigSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/Taint.dart';
import 'package:kubernetes/base.dart';

class NodeSpec extends Codable {
  NodeSpec();

  NodeSpec.empty();

  @override
  void decode(Coder decoder) {
    configSource = decoder.decode('configSource', inflate: () => new NodeConfigSource.empty());
    externalID = decoder.decode('externalID');
    podCIDR = decoder.decode('podCIDR');
    providerID = decoder.decode('providerID');
    taints = decoder.decodeObjects('taints', () => new Taint.empty());
    unschedulable = decoder.decode('unschedulable');
}

  NodeConfigSource configSource;
  String externalID;
  String podCIDR;
  String providerID;
  List<Taint> taints;
  bool unschedulable;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('configSource', this.configSource);
    encoder.encode('externalID', this.externalID);
    encoder.encode('podCIDR', this.podCIDR);
    encoder.encode('providerID', this.providerID);
    encoder.encodeObjects('taints', this.taints);
    encoder.encode('unschedulable', this.unschedulable);
  }
}
