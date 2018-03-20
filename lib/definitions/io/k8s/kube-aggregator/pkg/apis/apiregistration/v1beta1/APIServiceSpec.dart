import 'package:kubernetes/definitions/io/k8s/kube-aggregator/pkg/apis/apiregistration/v1beta1/ServiceReference.dart';
import 'package:kubernetes/base.dart';

class APIServiceSpec extends Codable {
  APIServiceSpec(this.service, this.caBundle, this.groupPriorityMinimum, this.versionPriority);

  APIServiceSpec.empty();

  @override
  void decode(Coder decoder) {
    caBundle = decoder.decode('caBundle');
    group = decoder.decode('group');
    groupPriorityMinimum = decoder.decode('groupPriorityMinimum');
    insecureSkipTLSVerify = decoder.decode('insecureSkipTLSVerify');
    service = decoder.decode('service', inflate: () => new ServiceReference.empty());
    version = decoder.decode('version');
    versionPriority = decoder.decode('versionPriority');
}

  String caBundle;
  String group;
  int groupPriorityMinimum;
  bool insecureSkipTLSVerify;
  ServiceReference service;
  String version;
  int versionPriority;

  @override
  void encode(Coder encoder) {
    encoder.encode('caBundle', this.caBundle);
    encoder.encode('group', this.group);
    encoder.encode('groupPriorityMinimum', this.groupPriorityMinimum);
    encoder.encode('insecureSkipTLSVerify', this.insecureSkipTLSVerify);
    encoder.encodeObject('service', this.service);
    encoder.encode('version', this.version);
    encoder.encode('versionPriority', this.versionPriority);
  }
}
