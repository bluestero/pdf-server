sudo apt-get update

sudo apt-get install -y git  automake  autoconf  libtool  libleptonica-dev  pkg-config zlib1g-dev make g++ openjdk-17-jdk python3 python3-pip pipx

mkdir ~/.git
cd ~/.git
git clone https://github.com/agl/jbig2enc.git
cd jbig2enc
./autogen.sh
./configure
make
sudo make install

sudo apt-get install -y libreoffice-writer libreoffice-calc libreoffice-impress unpaper ocrmypdf

pipx install uno opencv-python-headless unoconv pngquant WeasyPrint

cd ~/.git
git clone https://github.com/Stirling-Tools/Stirling-PDF.git &&\
cd Stirling-PDF
chmod +x ./gradlew
./gradlew build

sudo mkdir /opt/Stirling-PDF
sudo mv ./build/libs/Stirling-PDF-*.jar /opt/Stirling-PDF/
sudo mv scripts /opt/Stirling-PDF/
echo "Scripts installed."

./gradlew bootRun
or
java -jar /opt/Stirling-PDF/Stirling-PDF-*.jar

