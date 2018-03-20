import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/Time.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/ObjectReference.dart';
import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/ObjectMeta.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/EventSource.dart';
import 'package:kubernetes/base.dart';

class Event extends Codable {
  Event(this.metadata, this.involvedObject);

  Event.empty();

  @override
  void decode(Coder decoder) {
    apiVersion = decoder.decode('apiVersion');
    count = decoder.decode('count');
    firstTimestamp = decoder.decode('firstTimestamp', inflate: () => new Time.empty());
    involvedObject = decoder.decode('involvedObject', inflate: () => new ObjectReference.empty());
    kind = decoder.decode('kind');
    lastTimestamp = decoder.decode('lastTimestamp', inflate: () => new Time.empty());
    message = decoder.decode('message');
    metadata = decoder.decode('metadata', inflate: () => new ObjectMeta.empty());
    reason = decoder.decode('reason');
    source = decoder.decode('source', inflate: () => new EventSource.empty());
    type = decoder.decode('type');
}

  String apiVersion;
  int count;
  Time firstTimestamp;
  ObjectReference involvedObject;
  String kind;
  Time lastTimestamp;
  String message;
  ObjectMeta metadata;
  String reason;
  EventSource source;
  String type;

  @override
  void encode(Coder encoder) {
    encoder.encode('apiVersion', this.apiVersion);
    encoder.encode('count', this.count);
    encoder.encodeObject('firstTimestamp', this.firstTimestamp);
    encoder.encodeObject('involvedObject', this.involvedObject);
    encoder.encode('kind', this.kind);
    encoder.encodeObject('lastTimestamp', this.lastTimestamp);
    encoder.encode('message', this.message);
    encoder.encodeObject('metadata', this.metadata);
    encoder.encode('reason', this.reason);
    encoder.encodeObject('source', this.source);
    encoder.encode('type', this.type);
  }
}
