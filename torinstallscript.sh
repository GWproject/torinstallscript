apt-get update
apt-get upgrade
apt-get install tor
y
cat /etc/tor/torrc

read -e -p "Specify Server IP: " $SPECIP
echo SPECIP
sed -i 's/#RunAsDaemon 1/RunAsDaemon 1/g' /etc/tor/torrc
sed -i 's/#ORPort 9001/ORPort 9001/g' /etc/tor/torrc
sed -i 's/#Address noname.example.com/'Address $SPECIP'/g' /etc/tor/torrc
sed -i 's/#Nickname ididnteditheconfig/Nickname GWproject/g' /etc/tor/torrc
sed -i 's/#ExitPolicy reject \*:\*/ExitPolicy reject \*:\*/g' /etc/tor/torrc
cat /etc/tor/torrc
