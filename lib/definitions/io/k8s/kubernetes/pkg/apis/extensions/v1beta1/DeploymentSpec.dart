import 'package:kubernetes/definitions/io/k8s/api/extensions/v1beta1/RollbackConfig.dart';
import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/LabelSelector.dart';
import 'package:kubernetes/definitions/io/k8s/api/extensions/v1beta1/DeploymentStrategy.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/PodTemplateSpec.dart';
import 'package:kubernetes/base.dart';

class DeploymentSpec extends Codable {
  DeploymentSpec(this.template);

  DeploymentSpec.empty();

  @override
  void decode(Coder decoder) {
    minReadySeconds = decoder.decode('minReadySeconds');
    paused = decoder.decode('paused');
    progressDeadlineSeconds = decoder.decode('progressDeadlineSeconds');
    replicas = decoder.decode('replicas');
    revisionHistoryLimit = decoder.decode('revisionHistoryLimit');
    rollbackTo = decoder.decode('rollbackTo', inflate: () => new RollbackConfig.empty());
    selector = decoder.decode('selector', inflate: () => new LabelSelector.empty());
    strategy = decoder.decode('strategy', inflate: () => new DeploymentStrategy.empty());
    template = decoder.decode('template', inflate: () => new PodTemplateSpec.empty());
}

  int minReadySeconds;
  bool paused;
  int progressDeadlineSeconds;
  int replicas;
  int revisionHistoryLimit;
  RollbackConfig rollbackTo;
  LabelSelector selector;
  DeploymentStrategy strategy;
  PodTemplateSpec template;

  @override
  void encode(Coder encoder) {
    encoder.encode('minReadySeconds', this.minReadySeconds);
    encoder.encode('paused', this.paused);
    encoder.encode('progressDeadlineSeconds', this.progressDeadlineSeconds);
    encoder.encode('replicas', this.replicas);
    encoder.encode('revisionHistoryLimit', this.revisionHistoryLimit);
    encoder.encodeObject('rollbackTo', this.rollbackTo);
    encoder.encodeObject('selector', this.selector);
    encoder.encodeObject('strategy', this.strategy);
    encoder.encodeObject('template', this.template);
  }
}
