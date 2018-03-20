import 'package:kubernetes/base.dart';

class IPBlock extends Codable {
  IPBlock(this.cidr);

  IPBlock.empty();

  @override
  void decode(Coder decoder) {
    cidr = decoder.decode('cidr');
    except = decoder.decode('except');
}

  String cidr;
  List<String> except;

  @override
  void encode(Coder encoder) {
    encoder.encode('cidr', this.cidr);
    encoder.encode('except', this.except);
  }
}
