import 'package:kubernetes/definitions/io/k8s/api/core/v1/ServicePort.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/SessionAffinityConfig.dart';
import 'package:kubernetes/base.dart';

class ServiceSpec extends Codable {
  ServiceSpec();

  ServiceSpec.empty();

  @override
  void decode(Coder decoder) {
    clusterIP = decoder.decode('clusterIP');
    externalIPs = decoder.decode('externalIPs');
    externalName = decoder.decode('externalName');
    externalTrafficPolicy = decoder.decode('externalTrafficPolicy');
    healthCheckNodePort = decoder.decode('healthCheckNodePort');
    loadBalancerIP = decoder.decode('loadBalancerIP');
    loadBalancerSourceRanges = decoder.decode('loadBalancerSourceRanges');
    ports = decoder.decodeObjects('ports', () => new ServicePort.empty());
    publishNotReadyAddresses = decoder.decode('publishNotReadyAddresses');
    selector = decoder.decode('selector');
    sessionAffinity = decoder.decode('sessionAffinity');
    sessionAffinityConfig = decoder.decode('sessionAffinityConfig', inflate: () => new SessionAffinityConfig.empty());
    type = decoder.decode('type');
}

  String clusterIP;
  List<String> externalIPs;
  String externalName;
  String externalTrafficPolicy;
  int healthCheckNodePort;
  String loadBalancerIP;
  List<String> loadBalancerSourceRanges;
  List<ServicePort> ports;
  bool publishNotReadyAddresses;
  Map<String, String> selector;
  String sessionAffinity;
  SessionAffinityConfig sessionAffinityConfig;
  String type;

  @override
  void encode(Coder encoder) {
    encoder.encode('clusterIP', this.clusterIP);
    encoder.encode('externalIPs', this.externalIPs);
    encoder.encode('externalName', this.externalName);
    encoder.encode('externalTrafficPolicy', this.externalTrafficPolicy);
    encoder.encode('healthCheckNodePort', this.healthCheckNodePort);
    encoder.encode('loadBalancerIP', this.loadBalancerIP);
    encoder.encode('loadBalancerSourceRanges', this.loadBalancerSourceRanges);
    encoder.encodeObjects('ports', this.ports);
    encoder.encode('publishNotReadyAddresses', this.publishNotReadyAddresses);
    encoder.encode('selector', this.selector);
    encoder.encode('sessionAffinity', this.sessionAffinity);
    encoder.encodeObject('sessionAffinityConfig', this.sessionAffinityConfig);
    encoder.encode('type', this.type);
  }
}
