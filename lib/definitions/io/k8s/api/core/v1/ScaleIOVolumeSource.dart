import 'package:kubernetes/definitions/io/k8s/api/core/v1/LocalObjectReference.dart';
import 'package:kubernetes/base.dart';

class ScaleIOVolumeSource extends Codable {
  ScaleIOVolumeSource(this.gateway, this.system, this.secretRef);

  ScaleIOVolumeSource.empty();

  @override
  void decode(Coder decoder) {
    fsType = decoder.decode('fsType');
    gateway = decoder.decode('gateway');
    protectionDomain = decoder.decode('protectionDomain');
    readOnly = decoder.decode('readOnly');
    secretRef = decoder.decode('secretRef', inflate: () => new LocalObjectReference.empty());
    sslEnabled = decoder.decode('sslEnabled');
    storageMode = decoder.decode('storageMode');
    storagePool = decoder.decode('storagePool');
    system = decoder.decode('system');
    volumeName = decoder.decode('volumeName');
}

  String fsType;
  String gateway;
  String protectionDomain;
  bool readOnly;
  LocalObjectReference secretRef;
  bool sslEnabled;
  String storageMode;
  String storagePool;
  String system;
  String volumeName;

  @override
  void encode(Coder encoder) {
    encoder.encode('fsType', this.fsType);
    encoder.encode('gateway', this.gateway);
    encoder.encode('protectionDomain', this.protectionDomain);
    encoder.encode('readOnly', this.readOnly);
    encoder.encodeObject('secretRef', this.secretRef);
    encoder.encode('sslEnabled', this.sslEnabled);
    encoder.encode('storageMode', this.storageMode);
    encoder.encode('storagePool', this.storagePool);
    encoder.encode('system', this.system);
    encoder.encode('volumeName', this.volumeName);
  }
}
