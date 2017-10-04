sudo apt update;
sudo apt upgrade -y;

sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y;
sudo add-apt-repository ppa:webupd8team/java -y;
sudo apt update;

sudo apt install build-essential htop net-tools oracle-java9-installer sublime-text-installer -y;

echo "Succesfully installed JDK and Sublime Text Editor.";
echo "Testing JRE...";
java -version;

node_version="v8.6.0";
echo "Grabbing NodeJS $node_version now...";
wget https://nodejs.org/dist/$node_version/node-$node_version-linux-x64.tar.xz;

node_archive_location=$pwd/$(ls | grep node-$node_version) ;
tar --extract --file=$node_archive_location;

mkdir ~/runtimes/nodejs;

mv node-$node_version-linux-x64 ~/runtimes/nodejs;

sudo ln --symbolic ~/runtimes/nodejs/node-v8.6.0-linux-x64/bin/node /usr/local/bin/node;
sudo ln --symbolic ~/runtimes/nodejs/node-v8.6.0-linux-x64/bin/npm /usr/local/bin/npm;

echo "Node is done installing, checking version";
node -v;
echo "Also checking npm version...";
npm -v;

echo "Cleaning up!";
rm $node_archive_location;

exit;
echo "Done. Good Morning" $(whoami); 
