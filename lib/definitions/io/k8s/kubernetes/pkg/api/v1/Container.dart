import 'package:kubernetes/definitions/io/k8s/api/core/v1/EnvVar.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/EnvFromSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/Lifecycle.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/Probe.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/ContainerPort.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/ResourceRequirements.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/SecurityContext.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/VolumeMount.dart';
import 'package:kubernetes/base.dart';

class Container extends Codable {
  Container(this.name);

  Container.empty();

  @override
  void decode(Coder decoder) {
    args = decoder.decode('args');
    command = decoder.decode('command');
    env = decoder.decodeObjects('env', () => new EnvVar.empty());
    envFrom = decoder.decodeObjects('envFrom', () => new EnvFromSource.empty());
    image = decoder.decode('image');
    imagePullPolicy = decoder.decode('imagePullPolicy');
    lifecycle = decoder.decode('lifecycle', inflate: () => new Lifecycle.empty());
    livenessProbe = decoder.decode('livenessProbe', inflate: () => new Probe.empty());
    name = decoder.decode('name');
    ports = decoder.decodeObjects('ports', () => new ContainerPort.empty());
    readinessProbe = decoder.decode('readinessProbe', inflate: () => new Probe.empty());
    resources = decoder.decode('resources', inflate: () => new ResourceRequirements.empty());
    securityContext = decoder.decode('securityContext', inflate: () => new SecurityContext.empty());
    stdin = decoder.decode('stdin');
    stdinOnce = decoder.decode('stdinOnce');
    terminationMessagePath = decoder.decode('terminationMessagePath');
    terminationMessagePolicy = decoder.decode('terminationMessagePolicy');
    tty = decoder.decode('tty');
    volumeMounts = decoder.decodeObjects('volumeMounts', () => new VolumeMount.empty());
    workingDir = decoder.decode('workingDir');
}

  List<String> args;
  List<String> command;
  List<EnvVar> env;
  List<EnvFromSource> envFrom;
  String image;
  String imagePullPolicy;
  Lifecycle lifecycle;
  Probe livenessProbe;
  String name;
  List<ContainerPort> ports;
  Probe readinessProbe;
  ResourceRequirements resources;
  SecurityContext securityContext;
  bool stdin;
  bool stdinOnce;
  String terminationMessagePath;
  String terminationMessagePolicy;
  bool tty;
  List<VolumeMount> volumeMounts;
  String workingDir;

  @override
  void encode(Coder encoder) {
    encoder.encode('args', this.args);
    encoder.encode('command', this.command);
    encoder.encodeObjects('env', this.env);
    encoder.encodeObjects('envFrom', this.envFrom);
    encoder.encode('image', this.image);
    encoder.encode('imagePullPolicy', this.imagePullPolicy);
    encoder.encodeObject('lifecycle', this.lifecycle);
    encoder.encodeObject('livenessProbe', this.livenessProbe);
    encoder.encode('name', this.name);
    encoder.encodeObjects('ports', this.ports);
    encoder.encodeObject('readinessProbe', this.readinessProbe);
    encoder.encodeObject('resources', this.resources);
    encoder.encodeObject('securityContext', this.securityContext);
    encoder.encode('stdin', this.stdin);
    encoder.encode('stdinOnce', this.stdinOnce);
    encoder.encode('terminationMessagePath', this.terminationMessagePath);
    encoder.encode('terminationMessagePolicy', this.terminationMessagePolicy);
    encoder.encode('tty', this.tty);
    encoder.encodeObjects('volumeMounts', this.volumeMounts);
    encoder.encode('workingDir', this.workingDir);
  }
}
