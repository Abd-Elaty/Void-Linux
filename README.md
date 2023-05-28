# Void-Linux installation
Distribution website : https://voidlinux.org 

Installation guide : http://www.troubleshooters.com/linux/void/quickinst.htm

# First steps

The first thing you need to do after installation is upgrading the system : 
` xbps-install -Su `

Install basic tools : 
` xbps-install base-devel libX11-devel libXft-devel libXinerama-devel `

Install vim : ` xbps-install vim `

Install x window system & dmenu & git : 
` xbps-install xorg dmenu git `

Copy .xinitrc file to home directory:
` cp  /etc/X11/xinit/xinitrc  .xinitrc `
