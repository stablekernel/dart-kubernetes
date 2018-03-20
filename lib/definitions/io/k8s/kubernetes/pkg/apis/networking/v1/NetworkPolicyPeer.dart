import 'package:kubernetes/definitions/io/k8s/api/networking/v1/IPBlock.dart';
import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/apis/meta/v1/LabelSelector.dart';
import 'package:kubernetes/base.dart';

class NetworkPolicyPeer extends Codable {
  NetworkPolicyPeer();

  NetworkPolicyPeer.empty();

  @override
  void decode(Coder decoder) {
    ipBlock = decoder.decode('ipBlock', inflate: () => new IPBlock.empty());
    namespaceSelector = decoder.decode('namespaceSelector', inflate: () => new LabelSelector.empty());
    podSelector = decoder.decode('podSelector', inflate: () => new LabelSelector.empty());
}

  IPBlock ipBlock;
  LabelSelector namespaceSelector;
  LabelSelector podSelector;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('ipBlock', this.ipBlock);
    encoder.encodeObject('namespaceSelector', this.namespaceSelector);
    encoder.encodeObject('podSelector', this.podSelector);
  }
}
