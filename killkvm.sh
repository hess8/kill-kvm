#!/bin/bash

#anything that needs to be done before running virtualbox
sudo rmmod kvm_amd
echo "Removed kvm_amd"
sudo rmmod kvm
echo "Removed kvm"
