virsh net-destroy default
virsh net-undefine default
ifup enp0s8
brctl addbr br0
brctl addif br0 enp0s8
virsh net-define /root/br0.xml
virsh net-start br0
virsh net-autostart br0

virsh pool-define-as vg_vms logical - - /dev/sda5 gigatron /dev/gigatron
virsh pool-start vg_vms
virsh pool-autostart vg_vms
