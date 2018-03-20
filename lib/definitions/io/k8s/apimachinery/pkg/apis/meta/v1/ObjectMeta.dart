import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/Time.dart';
import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/Initializers.dart';
import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/OwnerReference.dart';
import 'package:kubernetes/base.dart';

class ObjectMeta extends Codable {
  ObjectMeta();

  ObjectMeta.empty();

  @override
  void decode(Coder decoder) {
    annotations = decoder.decode('annotations');
    clusterName = decoder.decode('clusterName');
    creationTimestamp = decoder.decode('creationTimestamp', inflate: () => new Time.empty());
    deletionGracePeriodSeconds = decoder.decode('deletionGracePeriodSeconds');
    deletionTimestamp = decoder.decode('deletionTimestamp', inflate: () => new Time.empty());
    finalizers = decoder.decode('finalizers');
    generateName = decoder.decode('generateName');
    generation = decoder.decode('generation');
    initializers = decoder.decode('initializers', inflate: () => new Initializers.empty());
    labels = decoder.decode('labels');
    name = decoder.decode('name');
    namespace = decoder.decode('namespace');
    ownerReferences = decoder.decodeObjects('ownerReferences', () => new OwnerReference.empty());
    resourceVersion = decoder.decode('resourceVersion');
    selfLink = decoder.decode('selfLink');
    uid = decoder.decode('uid');
}

  Map<String, String> annotations;
  String clusterName;
  Time creationTimestamp;
  int deletionGracePeriodSeconds;
  Time deletionTimestamp;
  List<String> finalizers;
  String generateName;
  int generation;
  Initializers initializers;
  Map<String, String> labels;
  String name;
  String namespace;
  List<OwnerReference> ownerReferences;
  String resourceVersion;
  String selfLink;
  String uid;

  @override
  void encode(Coder encoder) {
    encoder.encode('annotations', this.annotations);
    encoder.encode('clusterName', this.clusterName);
    encoder.encodeObject('creationTimestamp', this.creationTimestamp);
    encoder.encode('deletionGracePeriodSeconds', this.deletionGracePeriodSeconds);
    encoder.encodeObject('deletionTimestamp', this.deletionTimestamp);
    encoder.encode('finalizers', this.finalizers);
    encoder.encode('generateName', this.generateName);
    encoder.encode('generation', this.generation);
    encoder.encodeObject('initializers', this.initializers);
    encoder.encode('labels', this.labels);
    encoder.encode('name', this.name);
    encoder.encode('namespace', this.namespace);
    encoder.encodeObjects('ownerReferences', this.ownerReferences);
    encoder.encode('resourceVersion', this.resourceVersion);
    encoder.encode('selfLink', this.selfLink);
    encoder.encode('uid', this.uid);
  }
}
