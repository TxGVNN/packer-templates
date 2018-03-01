#!/bin/bash -eux

echo "==> Cleaning up tmp"
rm -rf /tmp/*

# Cleanup apt cache
apt-get -y autoremove --purge
apt-get -y clean
apt-get -y autoclean

# Remove foreign language man files
rm -rf /usr/share/man/??
rm -rf /usr/share/man/??_*

# Remove Bash history
unset HISTFILE
rm -f /root/.bash_history

# Clean up log files
find /var/log -type f | while read f; do echo -ne '' > $f; done;
