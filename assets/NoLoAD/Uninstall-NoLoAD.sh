#!/bin/bash

# Display script start
echo "Starting NoLoAD uninstall..."

# Reset authchanger
echo "Resetting authchanger..."
/usr/local/bin/authchanger -reset
echo "Authchanger reset complete."

# Restart the login window
echo "Restarting login window..."
killall -HUP loginwindow
echo "Uninstall process completed."