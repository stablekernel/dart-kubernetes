import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ObjectMeta.dart';
import 'package:kubernetes/definitions/io/k8s/api/rbac/v1alpha1/RoleRef.dart';
import 'package:kubernetes/definitions/io/k8s/api/rbac/v1alpha1/Subject.dart';
import 'package:kubernetes/base.dart';

class RoleBinding extends Codable {
  RoleBinding(this.subjects, this.roleRef);

  RoleBinding.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    kind = decoder.decode('kind');
    metadata = decoder.decode('metadata', inflate: () => new ObjectMeta.empty());
    roleRef = decoder.decode('roleRef', inflate: () => new RoleRef.empty());
    subjects = decoder.decodeObjects('subjects', () => new Subject.empty());
}

  String apiVersion;
  String kind;
  ObjectMeta metadata;
  RoleRef roleRef;
  List<Subject> subjects;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('kind', this.kind);
    encoder.encodeObject('metadata', this.metadata);
    encoder.encodeObject('roleRef', this.roleRef);
    encoder.encodeObjects('subjects', this.subjects);
  }
}
