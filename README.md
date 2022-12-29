KubeCluster
=========

This role is the result of learning how to deploy kubernetes on a bare metal cluster of Raspberry PI's running Ubuntu 22.04 arm64. This role can be run on cluster nodes or the control plane server, the preparation work is identical. 

Requirements
------------

This role requires the ability to act as sudo on all of the servers in the cluster. 

Role Variables
--------------


This role has only a few variables
| Variable | Defaults | Description | 
| --- | --- | --- |
| kubeversion | 1.25.0-00 | The version of kuberneties tools to install and prevent automatic upgrades. This will be used to manage the versions of kubeadm, kubectl and kubelet |
| containerdversion | 1.5.9-0ubuntu3 | The version of containerd to install and prevent automatic upgrades |
| runcversion | 1.1.0-0ubuntu1 | The version of containerd to install and prevent automatic upgrades | 

Dependencies
------------

N/A

Example Playbook
----------------
```
---
- name: Install KubeCluster
  hosts:
  - hosts
  become: true

  roles:
    - role: csmithson12345.kubcluster
      vars: (optional)
        kubeversion: VersionNumber
        containerdversion: VersionNumber
        runcversion: VersionNumber
```
License
-------

MIT


comment for the CI gods
