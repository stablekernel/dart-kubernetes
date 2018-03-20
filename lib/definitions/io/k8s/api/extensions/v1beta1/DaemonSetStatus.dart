import 'package:kubernetes/base.dart';

class DaemonSetStatus extends Codable {
  DaemonSetStatus(this.currentNumberScheduled, this.numberMisscheduled, this.desiredNumberScheduled, this.numberReady);

  DaemonSetStatus.empty();

  @override
  void decode(Coder decoder) {
    collisionCount = decoder.decode('collisionCount');
    currentNumberScheduled = decoder.decode('currentNumberScheduled');
    desiredNumberScheduled = decoder.decode('desiredNumberScheduled');
    numberAvailable = decoder.decode('numberAvailable');
    numberMisscheduled = decoder.decode('numberMisscheduled');
    numberReady = decoder.decode('numberReady');
    numberUnavailable = decoder.decode('numberUnavailable');
    observedGeneration = decoder.decode('observedGeneration');
    updatedNumberScheduled = decoder.decode('updatedNumberScheduled');
}

  int collisionCount;
  int currentNumberScheduled;
  int desiredNumberScheduled;
  int numberAvailable;
  int numberMisscheduled;
  int numberReady;
  int numberUnavailable;
  int observedGeneration;
  int updatedNumberScheduled;

  @override
  void encode(Coder encoder) {
    encoder.encode('collisionCount', this.collisionCount);
    encoder.encode('currentNumberScheduled', this.currentNumberScheduled);
    encoder.encode('desiredNumberScheduled', this.desiredNumberScheduled);
    encoder.encode('numberAvailable', this.numberAvailable);
    encoder.encode('numberMisscheduled', this.numberMisscheduled);
    encoder.encode('numberReady', this.numberReady);
    encoder.encode('numberUnavailable', this.numberUnavailable);
    encoder.encode('observedGeneration', this.observedGeneration);
    encoder.encode('updatedNumberScheduled', this.updatedNumberScheduled);
  }
}
