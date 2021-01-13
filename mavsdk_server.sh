sudo apt update
sudo apt upgrade
sudo apt-get install cmake build-essential colordiff git doxygen -y
unzip debian.zip && unzip docker.zip  && unzip examples.zip && unzip proto.zip && unzip src.zip && unzip templates.zip && unzip third_party.zip && unzip tools.zip
rm debian.zip && rm docker.zip  && rm examples.zip && rm proto.zip && rm src.zip && rm templates.zip && rm third_party.zip && rm tools.zip
git checkout master
git submodule update --init --recursive
cmake -DCMAKE_BUILD_TYPE=Release -DBUILD_BACKEND=ON -Bbuild/default -H.
cmake --build build/default
