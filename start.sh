apt update && apt upgrade -y
apt install git -y           
pip3 install -U pip    

if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  https://github.com/mithun-ctrl/OTAKU-FILE-RENAME/ /PyroBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /PyroBot
fi

cd /PyroBot
pip3 install -U -r requirements.txt --force-reinstall
echo "Starting Bot....✨"
python3 bot.py


