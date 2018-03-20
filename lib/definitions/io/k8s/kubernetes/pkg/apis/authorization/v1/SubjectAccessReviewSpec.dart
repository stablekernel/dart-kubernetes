import 'package:kubernetes/definitions/io/k8s/api/authorization/v1/NonResourceAttributes.dart';
import 'package:kubernetes/definitions/io/k8s/api/authorization/v1/ResourceAttributes.dart';
import 'package:kubernetes/base.dart';

class SubjectAccessReviewSpec extends Codable {
  SubjectAccessReviewSpec();

  SubjectAccessReviewSpec.empty();

  @override
  void decode(Coder decoder) {
    extra = decoder.decode('extra');
    groups = decoder.decode('groups');
    nonResourceAttributes = decoder.decode('nonResourceAttributes', inflate: () => new NonResourceAttributes.empty());
    resourceAttributes = decoder.decode('resourceAttributes', inflate: () => new ResourceAttributes.empty());
    uid = decoder.decode('uid');
    user = decoder.decode('user');
}

  Map<String, List<String>> extra;
  List<String> groups;
  NonResourceAttributes nonResourceAttributes;
  ResourceAttributes resourceAttributes;
  String uid;
  String user;

  @override
  void encode(Coder encoder) {
    encoder.encode('extra', this.extra);
    encoder.encode('groups', this.groups);
    encoder.encodeObject('nonResourceAttributes', this.nonResourceAttributes);
    encoder.encodeObject('resourceAttributes', this.resourceAttributes);
    encoder.encode('uid', this.uid);
    encoder.encode('user', this.user);
  }
}
