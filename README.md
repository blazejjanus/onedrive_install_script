# onedrive_install_script
[OneDrive](https://github.com/abraunegg/onedrive) installation script for Raspbian (ARMHF) and Ubuntu 22.x / Debian 11 / Raspbian (ARM64) 
[See install instruction](https://github.com/abraunegg/onedrive/blob/master/docs/INSTALL.md)

**How to set up?**

 - Clone this repository
 - Find the your local [OneDrive](https://github.com/abraunegg/onedrive) directory and open it
 - Inside this directory create new directory called install
 - Copy install.sh script to the new directory
 - [Optionaly] You can add an alias to this script: <br>
    `alias onedrive-update="sudo bash <your_onedrive_path>/install/install.sh"` <br>
    `source ~/.bashrc`

 
**How to update OneDrive?**

When you got notified about new version of OneDrive client you launch this script with sudo.
If you have add an alias you can simply launch it using it, by executing: `onedrive-update` and providing your password (make sure you have sudo rights).
