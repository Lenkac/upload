###########################################
##
## Copyright (2019, ) Institute of Software
##     Chinese Academy of Sciences
##      {wuheng,xuyuanjia2017}@otcaix.iscas.ac.cn
##
###########################################
 swapoff -a
  res=$(cat /etc/sysctl.conf | grep swappiness)
  sysctl net.bridge.bridge-nf-call-iptables=1
  systemctl stop firewalld
  systemctl disable firewalld
  if [[ -z $res ]]
  then
    echo "vm.swappiness = 0">> /etc/sysctl.conf
  fi
  echo "1" > /proc/sys/net/bridge/bridge-nf-call-iptables
  echo "1" > /proc/sys/net/ipv4/ip_forward >/dev/null
  rm -rf $HOME/.kube
  systemctl enable kubelet
  systemctl start kubelet
kubeadm reset
