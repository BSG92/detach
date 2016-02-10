# detach
Safely Remove USB 3.0 External HardDrives connected to USB 3.0 port in Linux PCs

Author : Buddika Gunawardena (BSG92)

Prerequisites
* This program requires modprobe for proper functioning. If it is not installed, install it by installing the "module-init-tools" package.
* udisksctl command is used. If you are using anything else, replace this with the tool you use.

Installation
* Make the "install.sh" script executable and run it. The program is set to be installed to /usr/sbin by default. Change it if required.

Uninstallation
* Use the uninstall.sh script to uninstall (delete) the "detach" script from /usr/sbin (default installation path). Change this if required.

Known Issues
* Since xhci_hcd module and other modules that depend on it are unloaded to power down a device, the script cuts off every USB connection, even the built-in camera in notebooks, temporarily.
