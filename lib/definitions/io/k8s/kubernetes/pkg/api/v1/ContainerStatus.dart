import 'package:kubernetes/definitions/io/k8s/api/core/v1/ContainerState.dart';
import 'package:kubernetes/base.dart';

class ContainerStatus extends Codable {
  ContainerStatus(this.name, this.ready, this.restartCount, this.image, this.imageID);

  ContainerStatus.empty();

  @override
  void decode(Coder decoder) {
    containerID = decoder.decode('containerID');
    image = decoder.decode('image');
    imageID = decoder.decode('imageID');
    lastState = decoder.decode('lastState', inflate: () => new ContainerState.empty());
    name = decoder.decode('name');
    ready = decoder.decode('ready');
    restartCount = decoder.decode('restartCount');
    state = decoder.decode('state', inflate: () => new ContainerState.empty());
}

  String containerID;
  String image;
  String imageID;
  ContainerState lastState;
  String name;
  bool ready;
  int restartCount;
  ContainerState state;

  @override
  void encode(Coder encoder) {
    encoder.encode('containerID', this.containerID);
    encoder.encode('image', this.image);
    encoder.encode('imageID', this.imageID);
    encoder.encodeObject('lastState', this.lastState);
    encoder.encode('name', this.name);
    encoder.encode('ready', this.ready);
    encoder.encode('restartCount', this.restartCount);
    encoder.encodeObject('state', this.state);
  }
}
