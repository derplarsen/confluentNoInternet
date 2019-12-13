#!/bin/bash
echo 'Good Job'
read -p 'Is it OK to disable SELinux? [y/n]' disableSEYN
if [ $disableSEYN == "y" ]; then sudo setenforce Permissive; fi
echo 'SELinux has been temporarily disabled (until Reboot). If you want to permanently disable, you need to set SELINUX to disabled in /etc/selinux/config'
read -p 'Ready to install the packages? [y/n]' installRpmsYN
if [ $installRpmsYN == "y" ]; then cd packages; sudo rpm -ivh *.rpm; fi
echo 'Packages all installed. Moving on to enabling Systemd for key components'
