#!/bin/bash
echo 'This script should be running on a machine with internet access and assumes you want to install . Hit ENTER if you are ready to move on'
./getPackages.sh
echo 'Packages Downloaded'
sleep 1
read -p 'Would you like to compress and bundle into one file? [y/n]' compressYN
if [ $compressYN == "y" ]; then tar -cvf ./confluent-rpms.tar ./packages; tar -rf confluent-rpms.tar ./runOnTargetServer.sh; gzip ./confluent-rpms.tar; fi
echo 'Packages Compressed into confluent-rpms.tar.gz'

echo 'Now, take this confluent-rpms.tar.gz and put them on your server without internet access and extract. Then run -> "runOnTargetServer.sh" <- on the server where you're installing'
