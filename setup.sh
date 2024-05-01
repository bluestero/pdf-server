nix-env -iA nixpkgs.jdk17
nix-env -iA nixpkgs.libtool
nix-env -iA nixpkgs.leptonica
nix-env -iA nixpkgs.libreoffice
nix-env -iA nixpkgs.unoconv
nix-env -iA nixpkgs.pngquant
nix-env -iA nixpkgs.unpaper
nix-env -iA nixpkgs.ocrmypdf
pip3 install opencv-python-headless

mkdir .git
cd .git
git clone https://github.com/Stirling-Tools/Stirling-PDF.git
cd Stirling-PDF
chmod +x ./gradlew
./gradlew build

mv /home/user/app/config /home/user/app/.git/Stirling-PDF/config
