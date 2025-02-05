BOT_TOKEN="Bot Token"
SNAPSHOT_URL="http://192.168.1.23:8765/picture/1/current/"
USER_CHAT_ID="Chat id"
CAPTION="Motion Detected"

SCRIPT_PATH=$(dirname $(readlink -f $0))
curl -o "${SCRIPT_PATH}/output.png" $SNAPSHOT_URL
curl -X POST -F "photo=@${SCRIPT_PATH}/output.png;type=image/png" "https://api.telegram.org/bot${BOT_TOKEN}/sendPhoto?chat_id=${USER_CHAT_ID}&caption=${CAPTION}"

# Script by pravodev
# https://github.com/pravodev
