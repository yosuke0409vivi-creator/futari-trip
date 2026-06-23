#!/bin/bash
# ふたり旅プラン — ローカルで開く（ダブルクリックで起動）
cd "$(dirname "$0")" || exit 1
PORT=8123
echo "ふたり旅プランをローカルで起動します… http://localhost:$PORT"
# ブラウザを少し遅らせて開く
( sleep 1; open "http://localhost:$PORT/index.html" ) &
python3 -m http.server $PORT
