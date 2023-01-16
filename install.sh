#/bin/bash!
PACKAGES=(
    build-essential
    libcurl4-openssl-dev
    libsqlite3-dev
    pkg-config
    libnotify-dev
    git
    curl
    ldc
)
echo "Checking dependencies installation..."
for PACKAGE in "${PACKAGES[@]}" 
do
    if [ $(dpkg-query -W -f=${Status} ${PACKAGE} 2>/dev/null | grep -c "ok installed") -eq 0 ];
    then
        echo ""
        echo "Installing ${PACKAGE}..."
        echo ""
        apt install ${PACKAGE} -y;
    fi
done
echo "All dependencies installed."
cd ..
echo "Pulling git repository..."
git pull
echo "Repository pulled."
cd onedrive
echo "Building new version of OneDrive..."
./configure --enable-notifications
make clean; make;
sudo make install
echo "OneDrive built."
echo "Launching OneDrive background monitor..."
onedrive --monitor &
echo "OneDrive is running."