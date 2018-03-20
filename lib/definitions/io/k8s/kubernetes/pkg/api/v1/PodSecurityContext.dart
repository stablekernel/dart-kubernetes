import 'package:kubernetes/definitions/io/k8s/api/core/v1/SELinuxOptions.dart';
import 'package:kubernetes/base.dart';

class PodSecurityContext extends Codable {
  PodSecurityContext();

  PodSecurityContext.empty();

  @override
  void decode(Coder decoder) {
    fsGroup = decoder.decode('fsGroup');
    runAsNonRoot = decoder.decode('runAsNonRoot');
    runAsUser = decoder.decode('runAsUser');
    seLinuxOptions = decoder.decode('seLinuxOptions', inflate: () => new SELinuxOptions.empty());
    supplementalGroups = decoder.decode('supplementalGroups');
}

  int fsGroup;
  bool runAsNonRoot;
  int runAsUser;
  SELinuxOptions seLinuxOptions;
  List<int> supplementalGroups;

  @override
  void encode(Coder encoder) {
    encoder.encode('fsGroup', this.fsGroup);
    encoder.encode('runAsNonRoot', this.runAsNonRoot);
    encoder.encode('runAsUser', this.runAsUser);
    encoder.encodeObject('seLinuxOptions', this.seLinuxOptions);
    encoder.encode('supplementalGroups', this.supplementalGroups);
  }
}
