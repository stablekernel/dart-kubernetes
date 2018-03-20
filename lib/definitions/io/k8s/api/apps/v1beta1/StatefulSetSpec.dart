import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/LabelSelector.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/PodTemplateSpec.dart';
import 'package:kubernetes/definitions/io/k8s/api/apps/v1beta1/StatefulSetUpdateStrategy.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/PersistentVolumeClaim.dart';
import 'package:kubernetes/base.dart';

class StatefulSetSpec extends Codable {
  StatefulSetSpec(this.template, this.serviceName);

  StatefulSetSpec.empty();

  @override
  void decode(Coder decoder) {
    podManagementPolicy = decoder.decode('podManagementPolicy');
    replicas = decoder.decode('replicas');
    revisionHistoryLimit = decoder.decode('revisionHistoryLimit');
    selector = decoder.decode('selector', inflate: () => new LabelSelector.empty());
    serviceName = decoder.decode('serviceName');
    template = decoder.decode('template', inflate: () => new PodTemplateSpec.empty());
    updateStrategy = decoder.decode('updateStrategy', inflate: () => new StatefulSetUpdateStrategy.empty());
    volumeClaimTemplates = decoder.decodeObjects('volumeClaimTemplates', () => new PersistentVolumeClaim.empty());
}

  String podManagementPolicy;
  int replicas;
  int revisionHistoryLimit;
  LabelSelector selector;
  String serviceName;
  PodTemplateSpec template;
  StatefulSetUpdateStrategy updateStrategy;
  List<PersistentVolumeClaim> volumeClaimTemplates;

  @override
  void encode(Coder encoder) {
    encoder.encode('podManagementPolicy', this.podManagementPolicy);
    encoder.encode('replicas', this.replicas);
    encoder.encode('revisionHistoryLimit', this.revisionHistoryLimit);
    encoder.encodeObject('selector', this.selector);
    encoder.encode('serviceName', this.serviceName);
    encoder.encodeObject('template', this.template);
    encoder.encodeObject('updateStrategy', this.updateStrategy);
    encoder.encodeObjects('volumeClaimTemplates', this.volumeClaimTemplates);
  }
}
