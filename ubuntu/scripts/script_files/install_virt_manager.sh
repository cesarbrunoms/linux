#!/bin/bash

install_virt_manager(){
    sudo apt install -y qemu qemu-kvm libvirt-daemon libvirt-clients bridge-utils virt-manager && sudo usermod -a -G libvirt $USER
}

#
install_virt_manager