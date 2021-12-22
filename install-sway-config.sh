sudo pacman -Syyu
sudo pacman -S \
  sway alacritty waybar wofi neofetch pavucontrol starship \
  xorg-xwayland xorg-xlsclients qt5-wayland glfw-wayland \
  xdg-desktop-portal-wlr libpipewire02 polkit-gnome wayland-protocols \

DIR=`pwd`

cp -ruT $DIR/.config/ ~/.config
mkdir ~/Pictures
cp -ruT $DIR/Pictures/ ~/Pictures
cp $DIR/rc/.* ~

cd /tmp
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si

yay -S cli-visualizer-git ttf-font-awesome sway-interactive-screenshot swaylock-effects-git