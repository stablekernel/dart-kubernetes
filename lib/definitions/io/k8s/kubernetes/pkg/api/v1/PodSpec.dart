import 'package:kubernetes/definitions/io/k8s/api/core/v1/Affinity.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/Container.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/HostAlias.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/LocalObjectReference.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/PodSecurityContext.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/Toleration.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/Volume.dart';
import 'package:kubernetes/base.dart';

class PodSpec extends Codable {
  PodSpec(this.containers);

  PodSpec.empty();

  @override
  void decode(Coder decoder) {
    activeDeadlineSeconds = decoder.decode('activeDeadlineSeconds');
    affinity = decoder.decode('affinity', inflate: () => new Affinity.empty());
    automountServiceAccountToken = decoder.decode('automountServiceAccountToken');
    containers = decoder.decodeObjects('containers', () => new Container.empty());
    dnsPolicy = decoder.decode('dnsPolicy');
    hostAliases = decoder.decodeObjects('hostAliases', () => new HostAlias.empty());
    hostIPC = decoder.decode('hostIPC');
    hostNetwork = decoder.decode('hostNetwork');
    hostPID = decoder.decode('hostPID');
    hostname = decoder.decode('hostname');
    imagePullSecrets = decoder.decodeObjects('imagePullSecrets', () => new LocalObjectReference.empty());
    initContainers = decoder.decodeObjects('initContainers', () => new Container.empty());
    nodeName = decoder.decode('nodeName');
    nodeSelector = decoder.decode('nodeSelector');
    priority = decoder.decode('priority');
    priorityClassName = decoder.decode('priorityClassName');
    restartPolicy = decoder.decode('restartPolicy');
    schedulerName = decoder.decode('schedulerName');
    securityContext = decoder.decode('securityContext', inflate: () => new PodSecurityContext.empty());
    serviceAccount = decoder.decode('serviceAccount');
    serviceAccountName = decoder.decode('serviceAccountName');
    subdomain = decoder.decode('subdomain');
    terminationGracePeriodSeconds = decoder.decode('terminationGracePeriodSeconds');
    tolerations = decoder.decodeObjects('tolerations', () => new Toleration.empty());
    volumes = decoder.decodeObjects('volumes', () => new Volume.empty());
}

  int activeDeadlineSeconds;
  Affinity affinity;
  bool automountServiceAccountToken;
  List<Container> containers;
  String dnsPolicy;
  List<HostAlias> hostAliases;
  bool hostIPC;
  bool hostNetwork;
  bool hostPID;
  String hostname;
  List<LocalObjectReference> imagePullSecrets;
  List<Container> initContainers;
  String nodeName;
  Map<String, String> nodeSelector;
  int priority;
  String priorityClassName;
  String restartPolicy;
  String schedulerName;
  PodSecurityContext securityContext;
  String serviceAccount;
  String serviceAccountName;
  String subdomain;
  int terminationGracePeriodSeconds;
  List<Toleration> tolerations;
  List<Volume> volumes;

  @override
  void encode(Coder encoder) {
    encoder.encode('activeDeadlineSeconds', this.activeDeadlineSeconds);
    encoder.encodeObject('affinity', this.affinity);
    encoder.encode('automountServiceAccountToken', this.automountServiceAccountToken);
    encoder.encodeObjects('containers', this.containers);
    encoder.encode('dnsPolicy', this.dnsPolicy);
    encoder.encodeObjects('hostAliases', this.hostAliases);
    encoder.encode('hostIPC', this.hostIPC);
    encoder.encode('hostNetwork', this.hostNetwork);
    encoder.encode('hostPID', this.hostPID);
    encoder.encode('hostname', this.hostname);
    encoder.encodeObjects('imagePullSecrets', this.imagePullSecrets);
    encoder.encodeObjects('initContainers', this.initContainers);
    encoder.encode('nodeName', this.nodeName);
    encoder.encode('nodeSelector', this.nodeSelector);
    encoder.encode('priority', this.priority);
    encoder.encode('priorityClassName', this.priorityClassName);
    encoder.encode('restartPolicy', this.restartPolicy);
    encoder.encode('schedulerName', this.schedulerName);
    encoder.encodeObject('securityContext', this.securityContext);
    encoder.encode('serviceAccount', this.serviceAccount);
    encoder.encode('serviceAccountName', this.serviceAccountName);
    encoder.encode('subdomain', this.subdomain);
    encoder.encode('terminationGracePeriodSeconds', this.terminationGracePeriodSeconds);
    encoder.encodeObjects('tolerations', this.tolerations);
    encoder.encodeObjects('volumes', this.volumes);
  }
}
