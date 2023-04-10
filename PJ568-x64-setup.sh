#!/usr/bin/env bash

# Download File
wget http://pj568.eu.org/app/PJ568-linux-x64.tar.gz -P ~/cache/

# Exc
sudo tar -xvf ~/cache/PJ568-linux-x64.tar.gz -C /

# Exp
sudo echo "export PATH=$PATH:/usr/bin/PJ568的博客-linux-x64/PJ568的博客 $PJ568_BLOG" >> /etc/profile
source /etc/profile

# .desktop
touch /usr/share/applications/PJ568_BLOG.desktop
echo "[Desktop Entry]" >> /usr/share/applications/PJ568_BLOG.desktop
echo "Name=PJ568的博客" >> /usr/share/applications/PJ568_BLOG.desktop
echo "Comment=PJ568的博客" >> /usr/share/applications/PJ568_BLOG.desktop
echo "Exec=/usr/bin/PJ568的博客-linux-x64/PJ568的博客" >> /usr/share/applications/PJ568_BLOG.desktop
echo "Type=Application" >> /usr/share/applications/PJ568_BLOG.desktop
echo "Terminal=false" >> /usr/share/applications/PJ568_BLOG.desktop
echo "Icon=/usr/bin/PJ568的博客-linux-x64/resources/app/icon.ico" >> /usr/share/applications/PJ568_BLOG.desktop
sudo chmod +x /usr/share/applications/PJ568_BLOG.desktop

# Copy
cp /usr/share/applications/PJ568_BLOG.desktop ~/Desktop/PJ568_BLOG.desktop
