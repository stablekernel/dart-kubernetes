import 'package:kubernetes/definitions/io/k8s/api/core/v1/AWSElasticBlockStoreVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/AzureDiskVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/AzureFileVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/CephFSVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/CinderVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/ConfigMapVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/DownwardAPIVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/EmptyDirVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/FCVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/FlexVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/FlockerVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/GCEPersistentDiskVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/GitRepoVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/GlusterfsVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/HostPathVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/ISCSIVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/NFSVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/PersistentVolumeClaimVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/PhotonPersistentDiskVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/PortworxVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/ProjectedVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/QuobyteVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/RBDVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/ScaleIOVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/SecretVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/StorageOSVolumeSource.dart';
import 'package:kubernetes/definitions/io/k8s/api/core/v1/VsphereVirtualDiskVolumeSource.dart';
import 'package:kubernetes/base.dart';

class Volume extends Codable {
  Volume(this.name);

  Volume.empty();

  @override
  void decode(Coder decoder) {
    awsElasticBlockStore = decoder.decode('awsElasticBlockStore', inflate: () => new AWSElasticBlockStoreVolumeSource.empty());
    azureDisk = decoder.decode('azureDisk', inflate: () => new AzureDiskVolumeSource.empty());
    azureFile = decoder.decode('azureFile', inflate: () => new AzureFileVolumeSource.empty());
    cephfs = decoder.decode('cephfs', inflate: () => new CephFSVolumeSource.empty());
    cinder = decoder.decode('cinder', inflate: () => new CinderVolumeSource.empty());
    configMap = decoder.decode('configMap', inflate: () => new ConfigMapVolumeSource.empty());
    downwardAPI = decoder.decode('downwardAPI', inflate: () => new DownwardAPIVolumeSource.empty());
    emptyDir = decoder.decode('emptyDir', inflate: () => new EmptyDirVolumeSource.empty());
    fc = decoder.decode('fc', inflate: () => new FCVolumeSource.empty());
    flexVolume = decoder.decode('flexVolume', inflate: () => new FlexVolumeSource.empty());
    flocker = decoder.decode('flocker', inflate: () => new FlockerVolumeSource.empty());
    gcePersistentDisk = decoder.decode('gcePersistentDisk', inflate: () => new GCEPersistentDiskVolumeSource.empty());
    gitRepo = decoder.decode('gitRepo', inflate: () => new GitRepoVolumeSource.empty());
    glusterfs = decoder.decode('glusterfs', inflate: () => new GlusterfsVolumeSource.empty());
    hostPath = decoder.decode('hostPath', inflate: () => new HostPathVolumeSource.empty());
    iscsi = decoder.decode('iscsi', inflate: () => new ISCSIVolumeSource.empty());
    name = decoder.decode('name');
    nfs = decoder.decode('nfs', inflate: () => new NFSVolumeSource.empty());
    persistentVolumeClaim = decoder.decode('persistentVolumeClaim', inflate: () => new PersistentVolumeClaimVolumeSource.empty());
    photonPersistentDisk = decoder.decode('photonPersistentDisk', inflate: () => new PhotonPersistentDiskVolumeSource.empty());
    portworxVolume = decoder.decode('portworxVolume', inflate: () => new PortworxVolumeSource.empty());
    projected = decoder.decode('projected', inflate: () => new ProjectedVolumeSource.empty());
    quobyte = decoder.decode('quobyte', inflate: () => new QuobyteVolumeSource.empty());
    rbd = decoder.decode('rbd', inflate: () => new RBDVolumeSource.empty());
    scaleIO = decoder.decode('scaleIO', inflate: () => new ScaleIOVolumeSource.empty());
    secret = decoder.decode('secret', inflate: () => new SecretVolumeSource.empty());
    storageos = decoder.decode('storageos', inflate: () => new StorageOSVolumeSource.empty());
    vsphereVolume = decoder.decode('vsphereVolume', inflate: () => new VsphereVirtualDiskVolumeSource.empty());
}

  AWSElasticBlockStoreVolumeSource awsElasticBlockStore;
  AzureDiskVolumeSource azureDisk;
  AzureFileVolumeSource azureFile;
  CephFSVolumeSource cephfs;
  CinderVolumeSource cinder;
  ConfigMapVolumeSource configMap;
  DownwardAPIVolumeSource downwardAPI;
  EmptyDirVolumeSource emptyDir;
  FCVolumeSource fc;
  FlexVolumeSource flexVolume;
  FlockerVolumeSource flocker;
  GCEPersistentDiskVolumeSource gcePersistentDisk;
  GitRepoVolumeSource gitRepo;
  GlusterfsVolumeSource glusterfs;
  HostPathVolumeSource hostPath;
  ISCSIVolumeSource iscsi;
  String name;
  NFSVolumeSource nfs;
  PersistentVolumeClaimVolumeSource persistentVolumeClaim;
  PhotonPersistentDiskVolumeSource photonPersistentDisk;
  PortworxVolumeSource portworxVolume;
  ProjectedVolumeSource projected;
  QuobyteVolumeSource quobyte;
  RBDVolumeSource rbd;
  ScaleIOVolumeSource scaleIO;
  SecretVolumeSource secret;
  StorageOSVolumeSource storageos;
  VsphereVirtualDiskVolumeSource vsphereVolume;

  @override
  void encode(Coder encoder) {
    encoder.encodeObject('awsElasticBlockStore', this.awsElasticBlockStore);
    encoder.encodeObject('azureDisk', this.azureDisk);
    encoder.encodeObject('azureFile', this.azureFile);
    encoder.encodeObject('cephfs', this.cephfs);
    encoder.encodeObject('cinder', this.cinder);
    encoder.encodeObject('configMap', this.configMap);
    encoder.encodeObject('downwardAPI', this.downwardAPI);
    encoder.encodeObject('emptyDir', this.emptyDir);
    encoder.encodeObject('fc', this.fc);
    encoder.encodeObject('flexVolume', this.flexVolume);
    encoder.encodeObject('flocker', this.flocker);
    encoder.encodeObject('gcePersistentDisk', this.gcePersistentDisk);
    encoder.encodeObject('gitRepo', this.gitRepo);
    encoder.encodeObject('glusterfs', this.glusterfs);
    encoder.encodeObject('hostPath', this.hostPath);
    encoder.encodeObject('iscsi', this.iscsi);
    encoder.encode('name', this.name);
    encoder.encodeObject('nfs', this.nfs);
    encoder.encodeObject('persistentVolumeClaim', this.persistentVolumeClaim);
    encoder.encodeObject('photonPersistentDisk', this.photonPersistentDisk);
    encoder.encodeObject('portworxVolume', this.portworxVolume);
    encoder.encodeObject('projected', this.projected);
    encoder.encodeObject('quobyte', this.quobyte);
    encoder.encodeObject('rbd', this.rbd);
    encoder.encodeObject('scaleIO', this.scaleIO);
    encoder.encodeObject('secret', this.secret);
    encoder.encodeObject('storageos', this.storageos);
    encoder.encodeObject('vsphereVolume', this.vsphereVolume);
  }
}
