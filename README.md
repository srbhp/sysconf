System configuration file for Linux/Mac 
=======


# Fedora on Macbook Air Early 2015 model.  
(https://wiki.archlinux.org/index.php/MacBook )

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

### Adjust Keyboard :

## ~~Fix tilde  key~~
`/etc/systemd/system/iso-tilde.service`~~

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
### add multi-touch support. 
https://github.com/pradhanphy/libinput-gestures
### Install fedy : 
https://www.folkswithhats.org/
### Enable rpmfusion repository
`sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm`
### Install important package 
`zypper install vim gnuplot gcc-c++ tlp tlp-rdw vim-powerline powerline mpv akmod-wl texlive python3-numpy python3-scipy python3-matplotlib lm_sensors powerline most gcc-gfortran cmake google-droid-* chromium`


`zypper  in  autojump git hack-fonts fontmake python3-fontmake xdotool yakuake kile autossh nextcloud-client glyph-keeper kitty  stix-fonts hdf5-devel dropbox texlive-cantarell-fonts texlive-cantarell texlive-comfortaa  texlive-comfortaa-fonts youtube-dl mpv  telegram-desktop kernel-devel python3-black cmake gcc-c++ make python3-devel  mpfr-devel gmp-devel astyle python3-h5py python3-yapf python3-proselint rubber go gimp flawfinder python3-bandit python3-pylist python3-pylint python3-pyls python3-cpplint cppcheck python3-poppler-qt5 python3-feedparser python3-qt5 python3-httplib2 acpi ccls clang clangcheck`

or Fedora 

`dnf install vim gnuplot gcc-c++ vim-powerline powerline   texlive python3-numpy python3-scipy python3-matplotlib lm_sensors powerline most gcc-gfortran cmake google-droid-* chromium autojump git   xdotool yakuake kile autossh nextcloud-client glyph-keeper kitty stix-fonts hdf5-devel   texlive-cantarell texlive-comfortaa  youtube-dl   kernel-devel python3-black cmake gcc-c++ make python3-devel mpfr-devel gmp-devel astyle python3-h5py python3-yapf  rubber go gimp flawfinder   python3-pylint   cppcheck python3-poppler-qt5 python3-feedparser python3-qt5 python3-httplib2 acpi ccls clang `




### Enable tlp service for power management (**Every laptop should do this to save battery**)
```
dnf install -y tlp tlp-rdw
systemctl mask systemd-rfkill.service  
systemctl enable tlp.service  
systemctl start  tlp.service
```
Also charge the default configuration file ( `/etc/default/tlp` ) to suit your need 
### Fix webcam and ~~screen brightness~~ issue
~~https://github.com/patjak/mba6x_bl~~
https://github.com/patjak/bcwc_pcie
### Fix fanspeed 
https://github.com/dgraziotin/mbpfan
 

### Make fedora as default start up disk (in Mac)
`sudo bless --mount=/Volumes/Linux\ HFS+\ ESP --file=/Volumes/Linux\ HFS+\ ESP/efi/fedora/grubx64.efi --setBoot`


