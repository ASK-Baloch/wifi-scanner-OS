
#!/bin/bash

# Title
echo "====================================="
echo "     📡 Wi-Fi Scanner - Ubuntu CLI     "
echo "====================================="
echo ""

# Timestamp
echo "Scan Time: $(date)"
echo ""

# Scan networks using nmcli
echo "Scanning for nearby Wi-Fi networks..."
echo ""
nmcli -f SSID,SIGNAL,BARS,SECURITY device wifi list | awk 'NR==1 || /[A-Za-z0-9]/'

# Save to log file
echo ""
echo "Saving results to scan_log.txt..."
nmcli -f SSID,SIGNAL,BARS,SECURITY device wifi list > scan_log.txt

echo ""
echo "✅ Done. Scan results saved."

