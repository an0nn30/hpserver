pacman -Sy
sudo pacman -S --needed base-devel git wget yajl
chsh -s /usr/bin/bash nobody
cd /var/tmp
su nobody -c 'git clone https://aur.archlinux.org/ssacli.git'
cd ssacli
su nobody -c 'makepkg -si'
cp -vr pkg/ssacli/opt /
cp -vr pkg/ssacli/usr/share /usr/
cp -vr pkg/ssacli/usr/bin/* /usr/bin/

