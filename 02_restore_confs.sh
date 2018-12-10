#!/bin/bash

# restoring confs
echo "restoring confs"
cp -ar ~/grimorio/confs/Black-Framework ~/.themes/ 
cp -ar ~/grimorio/confs/terminator/config ~/.config/terminator/config
cp -ar ~/grimorio/confs/openbox ~/.config
cp ~/grimorio/confs/tint2rc ~/.config/tint2rc
cp ~/grimorio/confs/conkyrc ~/.conkyrc
cp ~/grimorio/confs/gdbinit ~/.gdbinit
cp ~/grimorio/confs/compton.conf ~/.config/compton.conf 
cp ~/grimorio/confs/bashrc ~/.bashrc 
cp ~/grimorio/confs/Xresources ~/.Xresources 
mkdir -p ~/.local/share/applications/
cp ~/grimorio/confs/mimeapps.list ~/.local/share/applications/mimeapps.list 
mkdir -p ~/.config/rncbc.org/
cp ~/grimorio/confs/QjackCtl.conf  ~/.config/rncbc.org/QjackCtl.conf 
cp -ar ~/grimorio/confs/vscode.json ~/.config/Code/User/settings.json 
cp ~/grimorio/confs/redshift.conf ~/.config/redshift.conf
cp ft.conf
cp ~/grimorio/confs/bl-exitrc  ~/.config/bl-exit/bl-exitrc 

xfconf-query --channel thunar --property /misc-remember-geometry  --create --type bool --set false
mkdir -p ~/.config/xfce4/xfconf/xfce-perchannel-xml/
cp ~/grimorio/confs/thunar.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/thunar.xml 

echo "extra themes"
cp -r ~/grimorio/extra/themes/* ~/.themes/

# restoring bins
echo "restoring bins"
cp -ar ~/grimorio/bin  ~/
cd ~/bin
chmod +x *.sh

exit
