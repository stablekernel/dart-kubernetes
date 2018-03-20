import 'package:kubernetes/definitions/io/k8s/api/admissionregistration/v1alpha1/ServiceReference.dart';
import 'package:kubernetes/base.dart';

class AdmissionHookClientConfig extends Codable {
  AdmissionHookClientConfig(this.service, this.caBundle);

  AdmissionHookClientConfig.empty();

  @override
  void decode(Coder decoder) {
    caBundle = decoder.decode('caBundle');
    service = decoder.decode('service', inflate: () => new ServiceReference.empty());
}

  String caBundle;
  ServiceReference service;

  @override
  void encode(Coder encoder) {
    encoder.encode('caBundle', this.caBundle);
    encoder.encodeObject('service', this.service);
  }
}
