#!/bin/bash

# backupVM.bash
# Purpose: Backup VM images
#
# USAGE: ./backupVM.bash
#
# Author: Anthony Oliva
# Date: October 2025

user=$(whoami)

# Ensure script is run as root
if [ "$user" != "root" ]
then
 echo "You must run this script with root privileges. Please use sudo" >&2
 exit 1
fi

# Set variables for source path and backup path
img_path="/var/lib/libvirt/images/"
backup_path="/home/username/backups/"

# Create backup directory if it does not exist
mkdir -p "$backup_path"

# Prompt if all VMs should be backed up
read -p "Backup all VMs? (y|n): " answer

# Backup all VMs if answer is yes
if [ "$answer" = "y" ]
then
 for num in 1 2 3
 do
  vm="deb${num}"
  echo "Backing up VM ${vm}"
  gzip < "${img_path}${vm}.qcow2" > "${backup_path}${vm}.qcow2.gz"
  echo "${vm} BACKUP DONE"
 done

# Prompt for specific VM if answer is no
elif [ "$answer" = "n" ]
then
 read -p "Which VM should be backed up? (1|2|3): " numanswer

 until echo "$numanswer" | grep "^[123]$" > /dev/null
 do
  read -p "Invalid Selection. Select 1, 2, or 3: " numanswer
 done

 vm="deb${numanswer}"
 echo "Backing up VM ${vm}"
 gzip < "${img_path}${vm}.qcow2" > "${backup_path}${vm}.qcow2.gz"
 echo "${vm} BACKUP DONE"

else
 echo "Invalid Selection... Aborting program"
 exit 2
fi
