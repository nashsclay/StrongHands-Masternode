systemctl stop XBI.service
clear

echo "This script was forked from CryptoNeverSleeps"
echo "Ubuntu 16.04 is the recommended opearting system for this install."
echo

cd /usr/local/bin/
sudo apt-get install unrar
sudo apt-get install unzip
echo "Script may appear frozen for a few seconds. This is normal."
wget -c https://github.com/sub307/XBI-bootstrap/releases/download/417018/bootstrap417018.rar
sudo unrar x bootstrap417018.rar fix/
cd fix
sudo rm -R ~/.XBI/backups/
sudo rm -R ~/.XBI/blocks/
sudo rm -R ~/.XBI/chainstate/
sudo rm -R ~/.XBI/database/
sudo rm -R ~/.XBI/sporks/
sudo rm -R ~/.XBI/zerocoin/
sudo rm ~/.XBI/budget.dat ~/.XBI/db.log ~/.XBI/debug.log ~/.XBI/fee_estimates.dat ~/.XBI/mncache.dat ~/.XBI/mnpayments.dat ~/.XBI/peers.dat ~/.XBI/xbid.dat ~/.XBI/.lock
sudo rm ../bootstrap417018.rar
sudo mv chainstate blocks peers.dat ~/.XBI
cd /usr/local/bin/
systemctl start XBI.service
cd ~
echo "Masternode restarted. Any errors about files not existing is ok."
echo
echo "Please wait at least 3-5 mins before checking any commands as it is reindexing and configuring"
