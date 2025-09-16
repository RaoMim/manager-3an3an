#!/bin/bash

echo "📱 Manager 3an3an FCM Token Monitoring"
echo "=====================================\n"

echo "🔍 Monitoring Flutter logs for FCM activity..."
echo "📋 Looking for: login, FCM token generation, API calls, and notifications"
echo "⏰ Started at: $(date)"
echo "\n--- LIVE LOGS ---\n"

# Function to format and filter logs
filter_logs() {
    while IFS= read -r line; do
        timestamp=$(date "+%H:%M:%S")
        
        # Color coding based on content
        if [[ "$line" == *"🔴"* ]]; then
            echo -e "\033[31m[$timestamp] $line\033[0m"  # Red for errors
        elif [[ "$line" == *"✅"* ]]; then
            echo -e "\033[32m[$timestamp] $line\033[0m"  # Green for success
        elif [[ "$line" == *"🔄"* ]]; then
            echo -e "\033[33m[$timestamp] $line\033[0m"  # Yellow for processing
        elif [[ "$line" == *"📤"* ]] || [[ "$line" == *"📨"* ]]; then
            echo -e "\033[36m[$timestamp] $line\033[0m"  # Cyan for network
        elif [[ "$line" == *"🚀"* ]] || [[ "$line" == *"📱"* ]]; then
            echo -e "\033[35m[$timestamp] $line\033[0m"  # Magenta for init
        else
            echo "[$timestamp] $line"
        fi
    done
}

# Monitor flutter logs with filtering
flutter logs -d emulator-5554 2>&1 | grep -E "(FCM|token|auth|login|notification|firebase|🔴|✅|🔄|📤|📨|🚀|📱|⚠️)" | filter_logs