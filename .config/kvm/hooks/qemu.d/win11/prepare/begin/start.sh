#debugging
set -x

#variables
source "/etc/libvirt/hooks/kvm.conf"

#stop display manager
systemctl stop ly.service
# systemctl stop lightdm.service
# pkill -15 Xorg

# systemctl stop xdm-archlinux.service
#unbind VTconsoles

echo 0 > /sys/class/vtconsole/vtcon0/bind
echo 0 > /sys/class/vtconsole/vtcon1/bind

#unbind efi buffer
echo efi-framebuffer.0 > /sys/bus/platform/drivers/efi-framebuffer/unbind

#avoid race condition
sleep 5

#unload nvidia
modprobe -r nvidia_drm nvidia_modeset nvidia_uvm nvidia drm_kms_helper drm snd_hda_intel 


#unbind gpu
virsh nodedev-detach $VIRSH_GPU_VIDEO
virsh nodedev-detach $VIRSH_GPU_AUDIO
virsh nodedev-detach $VIRSH_USB_1
virsh nodedev-detach $VIRSH_USB_2
virsh nodedev-detach $VIRSH_USB_3

#load vfio
modprobe vfio_pci
modprobe vfio_iommu_type1
modprobe vfio
#nested vms
# modprobe kvm_amd nested=1
