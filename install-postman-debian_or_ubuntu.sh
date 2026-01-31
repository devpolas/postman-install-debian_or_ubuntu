#!/bin/bash

# Remove old Postman installation
sudo rm -rf /opt/Postman

echo "Downloading Postman....."

# Download and extract Postman
tar -C /tmp/ -xzf <(curl -L https://dl.pstmn.io/download/latest/linux64) \
  && sudo mv /tmp/Postman /opt/

echo "Postman installed successfully....."
echo "Creating launcher icon....."

sudo tee /usr/share/applications/postman.desktop > /dev/null << END
[Desktop Entry]
Name=Postman
Exec=/opt/Postman/Postman
Icon=/opt/Postman/app/resources/app/assets/icon.png
Terminal=false
Type=Application
Categories=Development;
END

echo "Well done! Postman installation process completed successfully!"
echo "You can find the Postman launcher under Applications."

