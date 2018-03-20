import 'package:kubernetes/definitions/io/k8s/api/extensions/v1beta1/AllowedHostPath.dart';
import 'package:kubernetes/definitions/io/k8s/api/extensions/v1beta1/FSGroupStrategyOptions.dart';
import 'package:kubernetes/definitions/io/k8s/api/extensions/v1beta1/HostPortRange.dart';
import 'package:kubernetes/definitions/io/k8s/api/extensions/v1beta1/RunAsUserStrategyOptions.dart';
import 'package:kubernetes/definitions/io/k8s/api/extensions/v1beta1/SELinuxStrategyOptions.dart';
import 'package:kubernetes/definitions/io/k8s/api/extensions/v1beta1/SupplementalGroupsStrategyOptions.dart';
import 'package:kubernetes/base.dart';

class PodSecurityPolicySpec extends Codable {
  PodSecurityPolicySpec(this.seLinux, this.runAsUser, this.supplementalGroups, this.fsGroup);

  PodSecurityPolicySpec.empty();

  @override
  void decode(Coder decoder) {
    allowPrivilegeEscalation = decoder.decode('allowPrivilegeEscalation');
    allowedCapabilities = decoder.decode('allowedCapabilities');
    allowedHostPaths = decoder.decodeObjects('allowedHostPaths', () => new AllowedHostPath.empty());
    defaultAddCapabilities = decoder.decode('defaultAddCapabilities');
    defaultAllowPrivilegeEscalation = decoder.decode('defaultAllowPrivilegeEscalation');
    fsGroup = decoder.decode('fsGroup', inflate: () => new FSGroupStrategyOptions.empty());
    hostIPC = decoder.decode('hostIPC');
    hostNetwork = decoder.decode('hostNetwork');
    hostPID = decoder.decode('hostPID');
    hostPorts = decoder.decodeObjects('hostPorts', () => new HostPortRange.empty());
    privileged = decoder.decode('privileged');
    readOnlyRootFilesystem = decoder.decode('readOnlyRootFilesystem');
    requiredDropCapabilities = decoder.decode('requiredDropCapabilities');
    runAsUser = decoder.decode('runAsUser', inflate: () => new RunAsUserStrategyOptions.empty());
    seLinux = decoder.decode('seLinux', inflate: () => new SELinuxStrategyOptions.empty());
    supplementalGroups = decoder.decode('supplementalGroups', inflate: () => new SupplementalGroupsStrategyOptions.empty());
    volumes = decoder.decode('volumes');
}

  bool allowPrivilegeEscalation;
  List<String> allowedCapabilities;
  List<AllowedHostPath> allowedHostPaths;
  List<String> defaultAddCapabilities;
  bool defaultAllowPrivilegeEscalation;
  FSGroupStrategyOptions fsGroup;
  bool hostIPC;
  bool hostNetwork;
  bool hostPID;
  List<HostPortRange> hostPorts;
  bool privileged;
  bool readOnlyRootFilesystem;
  List<String> requiredDropCapabilities;
  RunAsUserStrategyOptions runAsUser;
  SELinuxStrategyOptions seLinux;
  SupplementalGroupsStrategyOptions supplementalGroups;
  List<String> volumes;

  @override
  void encode(Coder encoder) {
    encoder.encode('allowPrivilegeEscalation', this.allowPrivilegeEscalation);
    encoder.encode('allowedCapabilities', this.allowedCapabilities);
    encoder.encodeObjects('allowedHostPaths', this.allowedHostPaths);
    encoder.encode('defaultAddCapabilities', this.defaultAddCapabilities);
    encoder.encode('defaultAllowPrivilegeEscalation', this.defaultAllowPrivilegeEscalation);
    encoder.encodeObject('fsGroup', this.fsGroup);
    encoder.encode('hostIPC', this.hostIPC);
    encoder.encode('hostNetwork', this.hostNetwork);
    encoder.encode('hostPID', this.hostPID);
    encoder.encodeObjects('hostPorts', this.hostPorts);
    encoder.encode('privileged', this.privileged);
    encoder.encode('readOnlyRootFilesystem', this.readOnlyRootFilesystem);
    encoder.encode('requiredDropCapabilities', this.requiredDropCapabilities);
    encoder.encodeObject('runAsUser', this.runAsUser);
    encoder.encodeObject('seLinux', this.seLinux);
    encoder.encodeObject('supplementalGroups', this.supplementalGroups);
    encoder.encode('volumes', this.volumes);
  }
}
