#!/bin/sh
echo "Current Terraform Version: $(terraform --version)"
echo ""
echo "Getting lastest download URL for Terraform for OSX on x64"
DOWNLOAD_LINK=$(curl https://www.terraform.io/downloads.html | grep 'darwin_amd64' | awk -F'"' '{print $2}') 
echo ""
echo "Downloading Terraform from '$DOWNLOAD_LINK'"
curl $DOWNLOAD_LINK -o ~/terraform.zip
echo ""
echo "Extracting Terraform file to /usr/local/bin     !!sudo required!!"
sudo unzip -o ~/terraform.zip -d "/usr/local/bin" 
echo ""
echo "Removing ~/terraform.zip"
rm ~/terraform.zip
echo ""
echo ""
echo ""
echo "New Terraform Version: $(terraform --version)"
