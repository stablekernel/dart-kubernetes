import 'package:kubernetes/definitions/io/k8s/api/core/v1/NodeAddress.dart';
import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/api/resource/Quantity.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/NodeCondition.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/NodeDaemonEndpoints.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/ContainerImage.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/NodeSystemInfo.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/AttachedVolume.dart';
import 'package:kubernetes/base.dart';

class NodeStatus extends Codable {
  NodeStatus();

  NodeStatus.empty();

  @override
  void decode(Coder decoder) {
    addresses = decoder.decodeObjects('addresses', () => new NodeAddress.empty());
    allocatable = decoder.decodeObjectMap('allocatable', () => new Quantity.empty());
    capacity = decoder.decodeObjectMap('capacity', () => new Quantity.empty());
    conditions = decoder.decodeObjects('conditions', () => new NodeCondition.empty());
    daemonEndpoints = decoder.decode('daemonEndpoints', inflate: () => new NodeDaemonEndpoints.empty());
    images = decoder.decodeObjects('images', () => new ContainerImage.empty());
    nodeInfo = decoder.decode('nodeInfo', inflate: () => new NodeSystemInfo.empty());
    phase = decoder.decode('phase');
    volumesAttached = decoder.decodeObjects('volumesAttached', () => new AttachedVolume.empty());
    volumesInUse = decoder.decode('volumesInUse');
}

  List<NodeAddress> addresses;
  Map<String, Quantity> allocatable;
  Map<String, Quantity> capacity;
  List<NodeCondition> conditions;
  NodeDaemonEndpoints daemonEndpoints;
  List<ContainerImage> images;
  NodeSystemInfo nodeInfo;
  String phase;
  List<AttachedVolume> volumesAttached;
  List<String> volumesInUse;

  @override
  void encode(Coder encoder) {
    encoder.encodeObjects('addresses', this.addresses);
    encoder.encodeObjectMap('allocatable', this.allocatable);
    encoder.encodeObjectMap('capacity', this.capacity);
    encoder.encodeObjects('conditions', this.conditions);
    encoder.encodeObject('daemonEndpoints', this.daemonEndpoints);
    encoder.encodeObjects('images', this.images);
    encoder.encodeObject('nodeInfo', this.nodeInfo);
    encoder.encode('phase', this.phase);
    encoder.encodeObjects('volumesAttached', this.volumesAttached);
    encoder.encode('volumesInUse', this.volumesInUse);
  }
}
