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

Install a browser :
` xbps-install chromium `

Copy .xinitrc file to home directory:
` cp /etc/X11/xinit/xinitrc .xinitrc `

# Install and customize ( dwm & st )

https://youtube.com/playlist?list=PLE8DfkcZXe1WohzF09aRoThb5j7bSLmSX

Dwm install : https://wiki.voidlinux.org/voidlinux_en_all_2021-04/A/Dwm_-

**dwm patches:**
- notitle
- uselessgap
- cfacts : make you able to resize window height.

**St Patches :**
- Scrollback 

Solve st window bug: https://dwm.suckless.org/faq/

**Statusbar :** 
- The best way to do a statusbar is using `dwmblocks` package or `ststusts`, clone it and edit config file to execute your scripts, and make install it.

- To make it execute with start GUI (X window system) , put ( dwmblocks & ) in . xinitrc file

# Packages i use
1. Install audio to your system: `sudo xbps-install alsa-utils` 

2. **Sxhkd**:
    - Go to ` ~/.config/ ` directory
    - Make a new directory ` mkdir sxhkd `
    - Make the configuration file ` vim sxhkdrc ` 
    
3. Install  and customize **mpv** player : `sudo xbps-install mpv`
    - https://www.linuxfordevices.com/tutorials/linux/customize-mpv-player

    - https://github.com/topics/mpv-osc

    - https://youtu.be/b8GoHyKw_8Q


4. **Zathura** pdf viewer: `sudo xbps-install zathura`
- install a pdf plugin ` zathura-pdf-poppler `
- zathurarc config file :  https://github.com/lighthaus-theme/zathura
- zathura shortcuts :
https://defkey.com/zathura-shortcuts

5. Install `nnn` ( file manager ) :
https://github.com/jarun/nnn 
    - https://github.com/jarun/nnn/wiki/Usage
    - https://github.com/jarun/nnn/wiki/Advanced-use-cases

6. Install `yt-dlp` for videos download

7. Install `zip` , `feh`

8. Install a `nerd font` for **font icons** :
https://bytexd.com/how-to-install-nerd-fonts-on-linux/

Install noto font for **emojis**:
` noto-fonts-emoji `

For **mount phones** install :
` simple-mtpfs `

# Customization
**Edit user & host in termminal :**

https://askubuntu.com/questions/123268/changing-colors-for-user-host-directory-information-in-terminal-command-prompt

**Vim customization :**

- Make vimrc file at ` /etc/vim/vimrc ` or ` ~/.vimrc `
- To add a color scheme make this directory `~/.vim/colors/` , download color scheme on it and apply scheme from  vimrc file....
https://www.freecodecamp.org/news/vimrc-configuration-guide-customize-your-vim-editor/

**To make vim customization accessable wide root** . (When use sudo also)

- put ` .vimrc ` file in `/roo/`.
- put schame color in `/usr/share/vim/vim90/colors/`

**Chromium force dark mode on internal pages :**

type ` chrome://flags ` in chromium sheach bar , and search for dark mode and enable it.

**Auto mount drives :**
https://linuxconfig.org/how-to-mount-partition-with-ntfs-file-system-and-read-write-access

Install `ntfs-3g` packege for full-featured, portable, read/write NTFS driver.

**Enable Dual boot :**
https://youtu.be/szvUAkBaw90

**Execute sudo without Password:**
https://linuxhandbook.com/sudo-without-password/


# Tips and tricks
1. **Show available languages :** `locale -a `
- To change language : go to ` /etc/locale.conf ` and edit it .

2. To make clock work good, **edit time zone** open ` /etc/rc.conf ` file and change time zone to [ TIMEZONE=GMT+0 ] .
- ` ls /usr/share/zoneinfo/ ` to view all zones

3. You can **change the default GRUB resolution**, thereby resulting in larger fonts on the GRUB menu:
- open the configuration: ` sudo vim /etc/default/grub `
- edit ` GRUB_GFXMODE=800x600 ` entry to suit your resolution
- ` sudo update-grub `


4. To **change tty font size**:
- Install `terminus-font` package 
- In `/etc/rc.conf` , set for example, ` FONT="ter-132n" `. The `"32"` refers to a height of 32px, whole the `"n"` refers to normal weight. There are many varieties in this package; ter-124b is 24px.
- ` sudo update-grub `

5. When compile a repo if you have **readline error**, you need to install ` readline-devel ` development libraries.

# See this
- http://eriklievaart.com/cheat/linux/

