import 'package:kubernetes/base.dart';

class NodeSystemInfo extends Codable {
  NodeSystemInfo(this.machineID, this.systemUUID, this.bootID, this.kernelVersion, this.osImage, this.containerRuntimeVersion, this.kubeletVersion, this.kubeProxyVersion, this.operatingSystem, this.architecture);

  NodeSystemInfo.empty();

  @override
  void decode(Coder decoder) {
    architecture = decoder.decode('architecture');
    bootID = decoder.decode('bootID');
    containerRuntimeVersion = decoder.decode('containerRuntimeVersion');
    kernelVersion = decoder.decode('kernelVersion');
    kubeProxyVersion = decoder.decode('kubeProxyVersion');
    kubeletVersion = decoder.decode('kubeletVersion');
    machineID = decoder.decode('machineID');
    operatingSystem = decoder.decode('operatingSystem');
    osImage = decoder.decode('osImage');
    systemUUID = decoder.decode('systemUUID');
}

  String architecture;
  String bootID;
  String containerRuntimeVersion;
  String kernelVersion;
  String kubeProxyVersion;
  String kubeletVersion;
  String machineID;
  String operatingSystem;
  String osImage;
  String systemUUID;

  @override
  void encode(Coder encoder) {
    encoder.encode('architecture', this.architecture);
    encoder.encode('bootID', this.bootID);
    encoder.encode('containerRuntimeVersion', this.containerRuntimeVersion);
    encoder.encode('kernelVersion', this.kernelVersion);
    encoder.encode('kubeProxyVersion', this.kubeProxyVersion);
    encoder.encode('kubeletVersion', this.kubeletVersion);
    encoder.encode('machineID', this.machineID);
    encoder.encode('operatingSystem', this.operatingSystem);
    encoder.encode('osImage', this.osImage);
    encoder.encode('systemUUID', this.systemUUID);
  }
}
