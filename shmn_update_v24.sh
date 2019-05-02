systemctl stop shmn.service
clear

echo "This script was forked from CryptoNeverSleeps"
echo "Ubuntu 16.04 is the recommended opearting system for this install."
echo

cd /usr/local/bin/
sudo apt-get install unzip
echo "Script may appear frozen for a few seconds. This is normal."
wget -c https://github.com/bitcoinbabys/StrongHandsMasterNode/releases/download/v2400/ubu64-shmnd-v2400.zip
sudo rm shmnd shmn-cli shmn-tx
sudo unzip ubu64-shmnd-v2400.zip -d update
cd update
sudo rm ../ubu64-shmnd-v2400.zip
sudo mv shmnd shmn-cli shmn-tx /usr/local/bin
cd /usr/local/bin/
systemctl start shmn.service
cd ~
echo "Masternode restarted. Any errors about files not existing is ok."
echo
echo "Please wait at least 1 min before checking any commands as it may be reindexing and reconfiguring"
