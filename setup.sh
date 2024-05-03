nix-shell -p jdk17
nix-shell -p gnumake
nix-shell -p libgcc
nix-shell -p automake
nix-shell -p autoconf
nix-shell -p libtool
nix-shell -p pkg-config
nix-shell -p zlib
nix-shell -p leptonica
nix-shell -p libreoffice
nix-shell -p unpaper
nix-shell -p ocrmypdf
nix-shell -p python312
nix-shell -p jbig2enc
nix-shell -p tesseract
pip3 install uno opencv-python-headless unoconv pngquant WeasyPrint --break-system-packages

mkdir .git
cd .git
git clone https://github.com/Stirling-Tools/Stirling-PDF.git
cd Stirling-PDF
chmod +x ./gradlew
./gradlew build

mv /home/user/app/configs /home/user/app/.git/Stirling-PDF/configs
