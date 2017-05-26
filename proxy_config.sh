#!/bin/bash

# Check if root
if [ `whoami` != "root" ]; then
        echo "Proxy setup error: need root access"
        exit
fi

# Global
echo "# Proxy Config (added by VMInstall)" >> /etc/profile
echo "export http_proxy=http://dewdfwdf03proxy.wdf.sap.corp:8080" >> /etc/profile
echo "export https_proxy=http://dewdfwdf03proxy.wdf.sap.corp:8080" >> /etc/profile

# Bash
echo "# Proxy Config (added by VMInstall)" >> /etc/bash.bashrc
echo "export http_proxy=http://dewdfwdf03proxy.wdf.sap.corp:8080" >> /etc/bash.bashrc
echo "export https_proxy=http://dewdfwdf03proxy.wdf.sap.corp:8080" >> /etc/bash.bashrc

# Wgeti
echo "# Proxy Config (added by VMInstall)" >> /etc/wgetrc
echo "http_proxy=http://dewdfwdf03proxy.wdf.sap.corp:8080" >> /etc/wgetrc
echo "https_proxy=http://dewdfwdf03proxy.wdf.sap.corp:8080" >> /etc/wgetrc

# Apt
echo "Acquire::http::proxy \"http://dewdfwdf03proxy.wdf.sap.corp:8080\";" >> /etc/apt/apt.conf
echo "Acquire::https::proxy \"http://dewdfwdf03proxy.wdf.sap.corp:8080\";" >> /etc/apt/apt.conf

# Git
git config --global http.proxy http://dewdfwdf03proxy.wdf.sap.corp:8080 
