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
sudo unzip ubu64-shmnd-v2400.zip update/
cd update
sudo rm -R ~/.shmn/backups/
sudo rm -R ~/.shmn/blocks/
sudo rm -R ~/.shmn/chainstate/
sudo rm -R ~/.shmn/database/
sudo rm ~/.shmn/db.log ~/.shmn/debug.log ~/.shmn/fee_estimates.dat ~/.shmn/mncache.dat ~/.shmn/mnpayments.dat ~/.shmn/shmnd.dat ~/.shmn/.lock
sudo rm ../ubu64-shmnd-v2400.zip
sudo mv shmn shmn-cli shmn-tx /usr/local/bin
cd /usr/local/bin/
systemctl start shmn.service
cd ~
echo "Masternode restarted. Any errors about files not existing is ok."
echo
echo "Please wait at least 1 min before checking any commands as it may be reindexing and reconfiguring"
