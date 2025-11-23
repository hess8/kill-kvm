#!/bin/bash

#anything that needs to be done before running virtualbox
rmmod kvm_amd
echo "Removed kvm_amd"
rmmod kvm
echo "Removed kvm"
