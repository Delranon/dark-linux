#!/bin/sh
echo "Skript zum mounten der NAS Laufwerke"
echo " "
sudo smbmount //10.0.0.5/Musik /mnt/musik -o user=nas
sudo smbmount //10.0.0.5/Filme /mnt/filme -o user=nas
