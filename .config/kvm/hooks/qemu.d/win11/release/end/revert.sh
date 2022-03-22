#debugging
set -x

#variables
source "/etc/libvirt/hooks/kvm.conf"

#unload vfio
modprobe -r vfio_pci

#rebind gpu
virsh nodedev-reattach $VIRSH_GPU_VIDEO
virsh nodedev-reattach $VIRSH_GPU_AUDIO
virsh nodedev-reattach $VIRSH_USB_1
virsh nodedev-reattach $VIRSH_USB_2
virsh nodedev-reattach $VIRSH_USB_3


#bind efi
echo "efi-framebuffer.0" > /sys/bus/platform/drivers/efi-framebuffer/bind

nvidia-xconfig --query-gpu-info > /dev/null 2>&1

#load nvidia
modprobe nvidia_drm
modprobe nvidia_modeset
modprobe drm_kms_helper
modprobe nvidia
modprobe drm
modprobe nvidia_uvm
modprobe snd_hda_intel

#rebind vtconsoles
echo 1 > /sys/class/vtconsole/vtcon0/bind
echo 0 > /sys/class/vtconsole/vtcon1/bind

#restart display service
# systemctl start xdm-archlinux.service
# su -c startx io
# systemctl start lightdm.service
systemctl start ly.service
