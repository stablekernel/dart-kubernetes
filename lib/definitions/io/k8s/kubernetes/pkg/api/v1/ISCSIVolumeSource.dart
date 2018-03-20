import 'package:kubernetes/definitions/io/k8s/api/core/v1/LocalObjectReference.dart';
import 'package:kubernetes/base.dart';

class ISCSIVolumeSource extends Codable {
  ISCSIVolumeSource(this.targetPortal, this.iqn, this.lun);

  ISCSIVolumeSource.empty();

  @override
  void decode(Coder decoder) {
    chapAuthDiscovery = decoder.decode('chapAuthDiscovery');
    chapAuthSession = decoder.decode('chapAuthSession');
    fsType = decoder.decode('fsType');
    initiatorName = decoder.decode('initiatorName');
    iqn = decoder.decode('iqn');
    iscsiInterface = decoder.decode('iscsiInterface');
    lun = decoder.decode('lun');
    portals = decoder.decode('portals');
    readOnly = decoder.decode('readOnly');
    secretRef = decoder.decode('secretRef', inflate: () => new LocalObjectReference.empty());
    targetPortal = decoder.decode('targetPortal');
}

  bool chapAuthDiscovery;
  bool chapAuthSession;
  String fsType;
  String initiatorName;
  String iqn;
  String iscsiInterface;
  int lun;
  List<String> portals;
  bool readOnly;
  LocalObjectReference secretRef;
  String targetPortal;

  @override
  void encode(Coder encoder) {
    encoder.encode('chapAuthDiscovery', this.chapAuthDiscovery);
    encoder.encode('chapAuthSession', this.chapAuthSession);
    encoder.encode('fsType', this.fsType);
    encoder.encode('initiatorName', this.initiatorName);
    encoder.encode('iqn', this.iqn);
    encoder.encode('iscsiInterface', this.iscsiInterface);
    encoder.encode('lun', this.lun);
    encoder.encode('portals', this.portals);
    encoder.encode('readOnly', this.readOnly);
    encoder.encodeObject('secretRef', this.secretRef);
    encoder.encode('targetPortal', this.targetPortal);
  }
}
