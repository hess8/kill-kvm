# kill-kvm
A systemd service that blocks KVM modules on startup.  It can be used with most modern Linux distributions.  
It's helpful if you're running VirtualBox VMs and you get the error "Another application is using hyper-V", so vbox can't block KVM


## Function
The script the service runs is very simple:
    rmmod kvm_amd
    echo "Removed kvm_amd"
    rmmod kvm
    echo "Removed kvm"

But the key is killkvm.service that runs at startup.  This may be essential, because VMs can be corrupted 
when running into the hyper-v error. (If your VM does get corrupted, try cloning it to recover)

## Configuration
* 

