import 'package:kubernetes/definitions/io/k8s/api/admissionregistration/v1alpha1/AdmissionHookClientConfig.dart';
import 'package:kubernetes/definitions/io/k8s/api/admissionregistration/v1alpha1/RuleWithOperations.dart';
import 'package:kubernetes/base.dart';

class ExternalAdmissionHook extends Codable {
  ExternalAdmissionHook(this.name, this.clientConfig);

  ExternalAdmissionHook.empty();

  @override
  void decode(Coder decoder) {
    clientConfig = decoder.decode('clientConfig', inflate: () => new AdmissionHookClientConfig.empty());
    failurePolicy = decoder.decode('failurePolicy');
    name = decoder.decode('name');
    rules = decoder.decodeObjects('rules', () => new RuleWithOperations.empty());
}

  AdmissionHookClientConfig clientConfig;
  String failurePolicy;
  String name;
  List<RuleWithOperations> rules;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('clientConfig', this.clientConfig);
    encoder.encode('failurePolicy', this.failurePolicy);
    encoder.encode('name', this.name);
    encoder.encodeObjects('rules', this.rules);
  }
}
