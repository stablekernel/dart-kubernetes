import 'package:kubernetes/definitions/io/k8s/api/core/v1/EnvVar.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/EnvFromSource.dart';
import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/LabelSelector.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/VolumeMount.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/Volume.dart';
import 'package:kubernetes/base.dart';

class PodPresetSpec extends Codable {
  PodPresetSpec();

  PodPresetSpec.empty();

  @override
  void decode(Coder decoder) {
    env = decoder.decodeObjects('env', () => new EnvVar.empty());
    envFrom = decoder.decodeObjects('envFrom', () => new EnvFromSource.empty());
    selector = decoder.decode('selector', inflate: () => new LabelSelector.empty());
    volumeMounts = decoder.decodeObjects('volumeMounts', () => new VolumeMount.empty());
    volumes = decoder.decodeObjects('volumes', () => new Volume.empty());
}

  List<EnvVar> env;
  List<EnvFromSource> envFrom;
  LabelSelector selector;
  List<VolumeMount> volumeMounts;
  List<Volume> volumes;

  @override
  void encode(Coder encoder) {
    encoder.encodeObjects('env', this.env);
    encoder.encodeObjects('envFrom', this.envFrom);
    encoder.encodeObject('selector', this.selector);
    encoder.encodeObjects('volumeMounts', this.volumeMounts);
    encoder.encodeObjects('volumes', this.volumes);
  }
}
