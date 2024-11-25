System configuration file for Linux/Mac 
=======


# Macbook Air Early 2015 model specific configuration.

    - [x] Most of things works perfectly fine. 
    - [x] Wifi driver is bit of a tricky case.
        - [x] This one helps : https://wiki.debian.org/bcm43xx
        - https://wiki.archlinux.org/index.php/MacBook 

### Partition for fedora
```
/dev/sda1      hfsplus   200M   16M  185M   8% /boot/efi
/dev/sda2      ext4      976M  158M  751M  18% /boot
/dev/sda3      ext4       25G  9.3G   14G  40% /
/dev/sda5      ext4       82G   60G   18G  77% /home
```

### Fix kworkers overuse of CPU. 
check:   ` grep . -r /sys/firmware/acpi/interrupts/  `
create a file and start the service  `/etc/systemd/system/suppress-gpeXX.service`

## Remap left-control and Command key 
Both Gnome and KDE have GUI option to do this but XFCE doesn't have. add a file ` ~/.Xmodmap` 
```
clear control
clear mod4

keycode 105 =
keycode 206 =

keycode 133 = Control_L NoSymbol Control_L
keycode 134 = Control_R NoSymbol Control_R
keycode 37 = Super_L NoSymbol Super_L

add control = Control_L
add control = Control_R
add mod4 = Super_L
```


### Fix power management  :

$ `cat /etc/udev/rules.d/90-xhc_sleep.rules `
### disable wake from S3 on XHC1
SUBSYSTEM=="pci", KERNEL=="0000:00:14.0", ATTR{power/wakeup}="disabled"  
$ Add and enable lid0-wake.service (file included)

# System Configuration

## Distro Specific Configuration
`bash <distro>.sh`

### generic configuration
run the `bash startup.sh` Command.

### Enable tlp service for power management (**Every laptop should do this to save battery**)
```
dnf install -y tlp tlp-rdw
systemctl mask systemd-rfkill.service  
systemctl enable tlp.service  
systemctl start  tlp.service
```


### Make fedora as default start up disk (in Mac)
`sudo bless --mount=/Volumes/Linux\ HFS+\ ESP --file=/Volumes/Linux\ HFS+\ ESP/efi/fedora/grubx64.efi --setBoot`


