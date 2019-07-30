# mirror and archlinuxcn
sudo pacman-mirrors -i -c China -m rank

# echo -e "[archlinuxcn]\nserver = https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch" | sudo tee -a /etc/pacman.conf
sudo sed -i '$a\[archlinuxcn]\nserver = https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch' /etc/pacman.conf

sudo pacman -Syu
sudo pacman -S archlinuxcn-keyring

# common
sudo pacman -S yay
sudo pacman -S ttf-hack noto-fonts-cjk noto-fonts-emoji noto-fonts-extra  
sudo pacman -S fcitx5-git fcitx5-gtk-git fcitx5-qt4-git fcitx5-qt5-git kcm-fcitx5-git fcitx5-chinese-addons-git

# i3 display
sudo pacman -S autorandr srandrd xbacklight

# terminal
sudo pacman -S sakura

# theme and icon
sudo pacman -S materia-gtk-theme papirus-icon-theme

# gnome applications
sudo pacman -S donf-editor evince nautilus sushi nautilus-admin

# kde applications
sudo pacman -S filelight gwenview spectacle

# applications
sudo pacman -S shadowsocks-qt5 chromium visual-studio-code-bin desktop-naotu netease-cloud-music \
	typora microsoft-office-online-jak 

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

sed -i 's/^plugins=.*/plugins=(git zsh-syntax-highlighting zsh-autosuggestions)/' ~/.zshrc
source ~/.zshrc


# pip mirror
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

# pac file
sudo pip install genpac
# sh ~/.scripts/genpac/gen.sh

tf() {
    # tensorflow and keras
    gpasswd -a $USER bumblebee

    sudo pacman -S python-tensorflow-opt-cuda

    pip install -U keras pandas scikit-learn matplotlib blingfire 
}
tf




