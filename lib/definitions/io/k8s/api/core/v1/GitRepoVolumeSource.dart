import 'package:kubernetes/base.dart';

class GitRepoVolumeSource extends Codable {
  GitRepoVolumeSource(this.repository);

  GitRepoVolumeSource.empty();

  @override
  void decode(Coder decoder) {
    directory = decoder.decode('directory');
    repository = decoder.decode('repository');
    revision = decoder.decode('revision');
}

  String directory;
  String repository;
  String revision;

  @override
  void encode(Coder encoder) {
    encoder.encode('directory', this.directory);
    encoder.encode('repository', this.repository);
    encoder.encode('revision', this.revision);
  }
}
