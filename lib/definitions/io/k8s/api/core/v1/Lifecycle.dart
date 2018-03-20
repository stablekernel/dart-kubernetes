import 'package:kubernetes/definitions/io/k8s/api/core/v1/Handler.dart';
import 'package:kubernetes/base.dart';

class Lifecycle extends Codable {
  Lifecycle();

  Lifecycle.empty();

  @override
  void decode(Coder decoder) {
    postStart = decoder.decode('postStart', inflate: () => new Handler.empty());
    preStop = decoder.decode('preStop', inflate: () => new Handler.empty());
}

  Handler postStart;
  Handler preStop;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('postStart', this.postStart);
    encoder.encodeObject('preStop', this.preStop);
  }
}
