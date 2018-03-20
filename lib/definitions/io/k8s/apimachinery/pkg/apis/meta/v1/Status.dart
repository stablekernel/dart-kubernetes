import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/StatusDetails.dart';
import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ListMeta.dart';
import 'package:kubernetes/base.dart';

class Status extends Codable {
  Status();

  Status.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    code = decoder.decode('code');
    details = decoder.decode('details', inflate: () => new StatusDetails.empty());
    kind = decoder.decode('kind');
    message = decoder.decode('message');
    metadata = decoder.decode('metadata', inflate: () => new ListMeta.empty());
    reason = decoder.decode('reason');
    status = decoder.decode('status');
}

  String apiVersion;
  int code;
  StatusDetails details;
  String kind;
  String message;
  ListMeta metadata;
  String reason;
  String status;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('code', this.code);
    encoder.encodeObject('details', this.details);
    encoder.encode('kind', this.kind);
    encoder.encode('message', this.message);
    encoder.encodeObject('metadata', this.metadata);
    encoder.encode('reason', this.reason);
    encoder.encode('status', this.status);
  }
}
