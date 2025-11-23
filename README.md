# kill-kvm
A systemd service that blocks KVM modules on startup.  It can be used with most modern Linux distributions.  
It's helpful if you're running VirtualBox VMs and you get the error "Another application is using hyper-V", because KVM is running.


## Function
The script the service runs is very simple:
* `rmmod kvm_amd`
* `echo "Removed kvm_amd"`
* `rmmod kvm`
* `echo "Removed kvm"`

The main benefit is that killkvm.service runs the script at startup.  This is important because VMs can be corrupted when running just once into the hyper-v error. (If your VM does get corrupted, try cloning it to recover)

## Configuration
* clone repo
* edit killkvm.service to put in your path to killkvm.sh
* run `chmod +x killkvm.sh`
* copy killkvm.service to `/etc/systemd/system/`
* run `sudo systemctl daemon-reload`
* run `sudo systemctl enable killkvm.service`
* test by `sudo systemctl start killkvm.service`

If `sudo lsmod | grep kvm` shows more kvm modules running than the two above, add lines to killkvm.service to stop them.




