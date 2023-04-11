#!/usr/bin/env bash

# Download File
wget http://pj568.eu.org/app/PJ568-linux-arm64.tar.gz -P ~/cache/

# Exc
sudo tar -xvf ~/cache/PJ568-linux-arm64.tar.gz -C /

# Exp
sudo echo "export PATH=$PATH:/usr/bin/PJ568的博客-linux-arm64/PJ568的博客 $PJ568_BLOG" >> /etc/profile
sudo source /etc/profile

# .desktop
sudo touch /usr/share/applications/PJ568_BLOG.desktop
sudo echo "[Desktop Entry]" >> /usr/share/applications/PJ568_BLOG.desktop
sudo echo "Name=PJ568的博客" >> /usr/share/applications/PJ568_BLOG.desktop
sudo echo "Comment=PJ568的博客" >> /usr/share/applications/PJ568_BLOG.desktop
sudo echo "Exec=/usr/bin/PJ568的博客-linux-arm64/PJ568的博客" >> /usr/share/applications/PJ568_BLOG.desktop
sudo echo "Type=Application" >> /usr/share/applications/PJ568_BLOG.desktop
sudo echo "Terminal=false" >> /usr/share/applications/PJ568_BLOG.desktop
sudo echo "Icon=/usr/bin/PJ568的博客-linux-arm64/resources/app/icon.ico" >> /usr/share/applications/PJ568_BLOG.desktop
sudo chmod +x /usr/share/applications/PJ568_BLOG.desktop
sudo chmod 777 /usr/share/applications/PJ568_BLOG.desktop

# Copy
sudo cp /usr/share/applications/PJ568_BLOG.desktop ~/Desktop/PJ568_BLOG.desktop
sudo chmod 777 ~/Desktop/PJ568_BLOG.desktop