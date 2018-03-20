import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/StatusCause.dart';
import 'package:kubernetes/base.dart';

class StatusDetails extends Codable {
  StatusDetails();

  StatusDetails.empty();

  @override
  void decode(Coder decoder) {
    causes = decoder.decodeObjects('causes', () => new StatusCause.empty());
    group = decoder.decode('group');
    kind = decoder.decode('kind');
    name = decoder.decode('name');
    retryAfterSeconds = decoder.decode('retryAfterSeconds');
    uid = decoder.decode('uid');
}

  List<StatusCause> causes;
  String group;
  String kind;
  String name;
  int retryAfterSeconds;
  String uid;

  @override
  void encode(Coder encoder) {
    encoder.encodeObjects('causes', this.causes);
    encoder.encode('group', this.group);
    encoder.encode('kind', this.kind);
    encoder.encode('name', this.name);
    encoder.encode('retryAfterSeconds', this.retryAfterSeconds);
    encoder.encode('uid', this.uid);
  }
}
