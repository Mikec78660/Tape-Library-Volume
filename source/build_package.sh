#!/bin/bash

# Update the script with Debian-specific commands
echo "#!/bin/bash" > build_package.sh
echo "" >> build_package.sh
echo "sudo apt update && sudo apt upgrade -y" >> build_package.sh
echo "sudo apt install -y build-essential" >> build_package.sh
echo "echo 'Build script updated for Debian 13.'" >> build_package.sh

chmod +x build_package.sh
