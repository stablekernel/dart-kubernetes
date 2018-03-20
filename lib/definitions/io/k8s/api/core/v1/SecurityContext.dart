import 'package:kubernetes/definitions/io/k8s/api/core/v1/Capabilities.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/SELinuxOptions.dart';
import 'package:kubernetes/base.dart';

class SecurityContext extends Codable {
  SecurityContext();

  SecurityContext.empty();

  @override
  void decode(Coder decoder) {
    allowPrivilegeEscalation = decoder.decode('allowPrivilegeEscalation');
    capabilities = decoder.decode('capabilities', inflate: () => new Capabilities.empty());
    privileged = decoder.decode('privileged');
    readOnlyRootFilesystem = decoder.decode('readOnlyRootFilesystem');
    runAsNonRoot = decoder.decode('runAsNonRoot');
    runAsUser = decoder.decode('runAsUser');
    seLinuxOptions = decoder.decode('seLinuxOptions', inflate: () => new SELinuxOptions.empty());
}

  bool allowPrivilegeEscalation;
  Capabilities capabilities;
  bool privileged;
  bool readOnlyRootFilesystem;
  bool runAsNonRoot;
  int runAsUser;
  SELinuxOptions seLinuxOptions;

  @override
  void encode(Coder encoder) {
    encoder.encode('allowPrivilegeEscalation', this.allowPrivilegeEscalation);
    encoder.encodeObject('capabilities', this.capabilities);
    encoder.encode('privileged', this.privileged);
    encoder.encode('readOnlyRootFilesystem', this.readOnlyRootFilesystem);
    encoder.encode('runAsNonRoot', this.runAsNonRoot);
    encoder.encode('runAsUser', this.runAsUser);
    encoder.encodeObject('seLinuxOptions', this.seLinuxOptions);
  }
}
