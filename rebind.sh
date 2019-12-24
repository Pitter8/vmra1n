BIND_PID1="1022 7914"
BIND_BDF1="0000:12:00.0"

sudo modprobe vfio-pci
echo "$BIND_PID1" > /sys/bus/pci/drivers/vfio-pci/new_id
echo "$BIND_BDF1" > /sys/bus/pci/devices/$BIND_BDF1/driver/unbind
echo "$BIND_BDF1" > /sys/bus/pci/drivers/vfio-pci/bind
echo "$BIND_PID1" > /sys/bus/pci/drivers/vfio-pci/remove_id
