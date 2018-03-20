import 'package:kubernetes/base.dart';

class Info extends Codable {
  Info(this.major, this.minor, this.gitVersion, this.gitCommit, this.gitTreeState, this.buildDate, this.goVersion, this.compiler, this.platform);

  Info.empty();

  @override
  void decode(Coder decoder) {
    buildDate = decoder.decode('buildDate');
    compiler = decoder.decode('compiler');
    gitCommit = decoder.decode('gitCommit');
    gitTreeState = decoder.decode('gitTreeState');
    gitVersion = decoder.decode('gitVersion');
    goVersion = decoder.decode('goVersion');
    major = decoder.decode('major');
    minor = decoder.decode('minor');
    platform = decoder.decode('platform');
}

  String buildDate;
  String compiler;
  String gitCommit;
  String gitTreeState;
  String gitVersion;
  String goVersion;
  String major;
  String minor;
  String platform;

  @override
  void encode(Coder encoder) {
    encoder.encode('buildDate', this.buildDate);
    encoder.encode('compiler', this.compiler);
    encoder.encode('gitCommit', this.gitCommit);
    encoder.encode('gitTreeState', this.gitTreeState);
    encoder.encode('gitVersion', this.gitVersion);
    encoder.encode('goVersion', this.goVersion);
    encoder.encode('major', this.major);
    encoder.encode('minor', this.minor);
    encoder.encode('platform', this.platform);
  }
}
