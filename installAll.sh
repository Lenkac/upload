yum install centos-release
cp ../../yum.repos.d/kubernetes.repo /etc/yum.repos.d/kubernetes.repo
yum makecache
yum -y install kubelet-1.17.4-0.x86_64 kubeadm-1.17.4-0.x86_64 kubectl-1.17.4-0.x86_64
yum -y install yum-utils
yum install bridge-utils
yum -y install net-tools
brctl delbr  flannel.1
brctl delbr cni0
