#!/bin/bash -e

# Define config file
config_file="$HOME/.config/transmission-daemon/settings.json"

# Check if config file exists
if [ ! -f $config_file ]; then
    echo "! Configuration file does not exist !"
else
    # Recover used port
	"rpc-port": 9091,
	port=$(sed -nr 's/.*"rpc-port":[[:space:]]([0-9]+),.*/\1/p' "$config_file")
	# Launch url
	xdg-open http://localhost:$port
fi
