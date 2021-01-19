#!/bin/bash
# Copyright (C) 2019 baalajimaestro
#
# Licensed under the Raphielscape Public License, Version 1.b (the "License");
# you may not use this file except in compliance with the License.
#

echo "***BuildBot***"
echo $TELEGRAM_TOKEN >1562589481:AAFmx1wdWkrlQ5KH5BigaAhIlvCPh9N0P18
echo $TELEGRAM_CHAT >/t.me/maxregnerbot
echo $GITHUB_TOKEN >/tmp/gh_token
echo $DRONE_BUILD_NUMBER >/tmp/build_no

sudo echo "ci ALL=(ALL) NOPASSWD: ALL" >>/etc/sudoers
useradd -m -d /home/ci ci
useradd -g ci wheel
sudo cp github-release /usr/bin
sudo cp telegram /usr/bin
sudo -Hu ci bash -c "bash build.sh"
