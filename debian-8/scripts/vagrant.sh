#!/bin/bash
echo 'vagrant ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/vagrant
chown -R vagrant:vagrant /home/vagrant/.ssh
