nix-env -iA nixpkgs.jdk17
nix-env -iA nixpkgs.gnumake
nix-env -iA nixpkgs.libgcc
nix-env -iA nixpkgs.automake
nix-env -iA nixpkgs.autoconf
nix-env -iA nixpkgs.libtool
nix-env -iA nixpkgs.pkg-config
nix-env -iA nixpkgs.zlib
nix-env -iA nixpkgs.leptonica
nix-env -iA nixpkgs.libreoffice
nix-env -iA nixpkgs.unpaper
nix-env -iA nixpkgs.ocrmypdf
nix-env -iA nixpkgs.python312
pip3 install uno opencv-python-headless unoconv pngquant WeasyPrint --break-system-packages

mkdir .git
cd .git
git clone https://github.com/Stirling-Tools/Stirling-PDF.git
cd Stirling-PDF
chmod +x ./gradlew
./gradlew build

mv /home/user/app/configs /home/user/app/.git/Stirling-PDF/configs
