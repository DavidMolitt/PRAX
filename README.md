instalacia na Arch based distribuciach

curl -sl https://github.com/DavidMolitt/PRAX/blob/main/install_arch_distros.sh | sh

instalacaia na debian based distribuciach

curl -sl https://github.com/DavidMolitt/PRAX/blob/main/install_deb_distors.sh | sh

na windowse 

dependency:
    docker
    git
    python3

git clone https://github.com/DavidMolitt/PRAX
cd appPY
docker build -t post-microservice .



run with 
docker run -p 4000:5000 post-microservice
