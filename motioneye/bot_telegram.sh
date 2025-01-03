BOT_TOKEN="Bot token"
SNAPSHOT_URL="URL Snapshoot"
USER_CHAT_ID="User ID Telegram"
CAPTION="Motion Detected"

SCRIPT_PATH=$(dirname $(readlink -f $0))
curl -o "${SCRIPT_PATH}/output.png" $SNAPSHOT_URL
curl -X POST -F "photo=@${SCRIPT_PATH}/output.png;type=image/png" "https://api.telegram.org/bot${BOT_TOKEN}/sendPhoto?chat_id=${USER_CHAT_ID}&caption=${CAPTION}"
