import 'package:kubernetes/definitions/io/k8s/api/core/v1/AWSElasticBlockStoreVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/AzureDiskVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/AzureFilePersistentVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/apimachinery/pkg/api/resource/Quantity.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/CephFSPersistentVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/CinderVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/ObjectReference.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/FCVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/FlexVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/FlockerVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/GCEPersistentDiskVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/GlusterfsVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/HostPathVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/ISCSIVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/LocalVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/NFSVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/PhotonPersistentDiskVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/PortworxVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/QuobyteVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/RBDVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/ScaleIOVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/StorageOSPersistentVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/VsphereVirtualDiskVolumeSource.dart';
import 'package:kubernetes/base.dart';

class PersistentVolumeSpec extends Codable {
  PersistentVolumeSpec();

  PersistentVolumeSpec.empty();

  @override
  void decode(Coder decoder) {
    accessModes = decoder.decode('accessModes');
    awsElasticBlockStore = decoder.decode('awsElasticBlockStore', inflate: () => new AWSElasticBlockStoreVolumeSource.empty());
    azureDisk = decoder.decode('azureDisk', inflate: () => new AzureDiskVolumeSource.empty());
    azureFile = decoder.decode('azureFile', inflate: () => new AzureFilePersistentVolumeSource.empty());
    capacity = decoder.decodeObjectMap('capacity', () => new Quantity.empty());
    cephfs = decoder.decode('cephfs', inflate: () => new CephFSPersistentVolumeSource.empty());
    cinder = decoder.decode('cinder', inflate: () => new CinderVolumeSource.empty());
    claimRef = decoder.decode('claimRef', inflate: () => new ObjectReference.empty());
    fc = decoder.decode('fc', inflate: () => new FCVolumeSource.empty());
    flexVolume = decoder.decode('flexVolume', inflate: () => new FlexVolumeSource.empty());
    flocker = decoder.decode('flocker', inflate: () => new FlockerVolumeSource.empty());
    gcePersistentDisk = decoder.decode('gcePersistentDisk', inflate: () => new GCEPersistentDiskVolumeSource.empty());
    glusterfs = decoder.decode('glusterfs', inflate: () => new GlusterfsVolumeSource.empty());
    hostPath = decoder.decode('hostPath', inflate: () => new HostPathVolumeSource.empty());
    iscsi = decoder.decode('iscsi', inflate: () => new ISCSIVolumeSource.empty());
    local = decoder.decode('local', inflate: () => new LocalVolumeSource.empty());
    mountOptions = decoder.decode('mountOptions');
    nfs = decoder.decode('nfs', inflate: () => new NFSVolumeSource.empty());
    persistentVolumeReclaimPolicy = decoder.decode('persistentVolumeReclaimPolicy');
    photonPersistentDisk = decoder.decode('photonPersistentDisk', inflate: () => new PhotonPersistentDiskVolumeSource.empty());
    portworxVolume = decoder.decode('portworxVolume', inflate: () => new PortworxVolumeSource.empty());
    quobyte = decoder.decode('quobyte', inflate: () => new QuobyteVolumeSource.empty());
    rbd = decoder.decode('rbd', inflate: () => new RBDVolumeSource.empty());
    scaleIO = decoder.decode('scaleIO', inflate: () => new ScaleIOVolumeSource.empty());
    storageClassName = decoder.decode('storageClassName');
    storageos = decoder.decode('storageos', inflate: () => new StorageOSPersistentVolumeSource.empty());
    vsphereVolume = decoder.decode('vsphereVolume', inflate: () => new VsphereVirtualDiskVolumeSource.empty());
}

  List<String> accessModes;
  AWSElasticBlockStoreVolumeSource awsElasticBlockStore;
  AzureDiskVolumeSource azureDisk;
  AzureFilePersistentVolumeSource azureFile;
  Map<String, Quantity> capacity;
  CephFSPersistentVolumeSource cephfs;
  CinderVolumeSource cinder;
  ObjectReference claimRef;
  FCVolumeSource fc;
  FlexVolumeSource flexVolume;
  FlockerVolumeSource flocker;
  GCEPersistentDiskVolumeSource gcePersistentDisk;
  GlusterfsVolumeSource glusterfs;
  HostPathVolumeSource hostPath;
  ISCSIVolumeSource iscsi;
  LocalVolumeSource local;
  List<String> mountOptions;
  NFSVolumeSource nfs;
  String persistentVolumeReclaimPolicy;
  PhotonPersistentDiskVolumeSource photonPersistentDisk;
  PortworxVolumeSource portworxVolume;
  QuobyteVolumeSource quobyte;
  RBDVolumeSource rbd;
  ScaleIOVolumeSource scaleIO;
  String storageClassName;
  StorageOSPersistentVolumeSource storageos;
  VsphereVirtualDiskVolumeSource vsphereVolume;

  @override
  void encode(Coder encoder) {
    encoder.encode('accessModes', this.accessModes);
    encoder.encodeObject('awsElasticBlockStore', this.awsElasticBlockStore);
    encoder.encodeObject('azureDisk', this.azureDisk);
    encoder.encodeObject('azureFile', this.azureFile);
    encoder.encodeObjectMap('capacity', this.capacity);
    encoder.encodeObject('cephfs', this.cephfs);
    encoder.encodeObject('cinder', this.cinder);
    encoder.encodeObject('claimRef', this.claimRef);
    encoder.encodeObject('fc', this.fc);
    encoder.encodeObject('flexVolume', this.flexVolume);
    encoder.encodeObject('flocker', this.flocker);
    encoder.encodeObject('gcePersistentDisk', this.gcePersistentDisk);
    encoder.encodeObject('glusterfs', this.glusterfs);
    encoder.encodeObject('hostPath', this.hostPath);
    encoder.encodeObject('iscsi', this.iscsi);
    encoder.encodeObject('local', this.local);
    encoder.encode('mountOptions', this.mountOptions);
    encoder.encodeObject('nfs', this.nfs);
    encoder.encode('persistentVolumeReclaimPolicy', this.persistentVolumeReclaimPolicy);
    encoder.encodeObject('photonPersistentDisk', this.photonPersistentDisk);
    encoder.encodeObject('portworxVolume', this.portworxVolume);
    encoder.encodeObject('quobyte', this.quobyte);
    encoder.encodeObject('rbd', this.rbd);
    encoder.encodeObject('scaleIO', this.scaleIO);
    encoder.encode('storageClassName', this.storageClassName);
    encoder.encodeObject('storageos', this.storageos);
    encoder.encodeObject('vsphereVolume', this.vsphereVolume);
  }
}
