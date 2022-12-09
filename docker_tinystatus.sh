#!/usr/bin/env sh

refresh_tinystatus() {
  while true; do
    echo "refresh_tinystatus: Started"
    temp_file=$(mktemp)
    if /app/tinystatus /config/checks.csv /config/incidents.txt > "$temp_file"; then
      if [ ! -f "$temp_file" ]; then
        mv "$temp_file" /usr/share/nginx/html/index.html
        echo "refresh_tinystatus: Succeeded"
      else
        echo "refresh_tinystatus: Failed"
      fi
    else
      echo "refresh_tinystatus: Failed"
    fi
    echo "refresh_tinystatus: Sleep for $REFRESH_INTERVAL"
    sleep "$REFRESH_INTERVAL"
  done
}

refresh_tinystatus &
