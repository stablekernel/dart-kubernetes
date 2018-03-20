import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/Initializer.dart';
import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/Status.dart';
import 'package:kubernetes/base.dart';

class Initializers extends Codable {
  Initializers(this.pending);

  Initializers.empty();

  @override
  void decode(Coder decoder) {
    pending = decoder.decodeObjects('pending', () => new Initializer.empty());
    result = decoder.decode('result', inflate: () => new Status.empty());
}

  List<Initializer> pending;
  Status result;

  @override
  void encode(Coder encoder) {
    encoder.encodeObjects('pending', this.pending);
    encoder.encodeObject('result', this.result);
  }
}
