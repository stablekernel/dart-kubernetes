import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/Preconditions.dart';
import 'package:kubernetes/base.dart';

class DeleteOptions extends Codable {
  DeleteOptions();

  DeleteOptions.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    gracePeriodSeconds = decoder.decode('gracePeriodSeconds');
    kind = decoder.decode('kind');
    orphanDependents = decoder.decode('orphanDependents');
    preconditions = decoder.decode('preconditions', inflate: () => new Preconditions.empty());
    propagationPolicy = decoder.decode('propagationPolicy');
}

  String apiVersion;
  int gracePeriodSeconds;
  String kind;
  bool orphanDependents;
  Preconditions preconditions;
  String propagationPolicy;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('gracePeriodSeconds', this.gracePeriodSeconds);
    encoder.encode('kind', this.kind);
    encoder.encode('orphanDependents', this.orphanDependents);
    encoder.encodeObject('preconditions', this.preconditions);
    encoder.encode('propagationPolicy', this.propagationPolicy);
  }
}
