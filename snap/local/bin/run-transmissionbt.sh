#!/bin/bash -e

#==================
# Store used port to be able to launch WebUI
# as Cannot access config file (in root folders)
# Use file in $SNAP_COMMON as a trick

# - Define shared file
shared_file="$SNAP_COMMON/webui-port"

# - Define config file
config_file="$HOME/.config/transmission-daemon/settings.json"

# Consider default port (no config file if first launch)
port=9091

# - Check if config file exists
if [ ! -f $config_file ]; then
    echo "! Configuration file does not exist !"
else
    # Recover used port
	port=$(sed -nr 's/.*"rpc-port":[[:space:]]([0-9]+),.*/\1/p' "$config_file")
fi

# export (even if empty = default port)
echo "$port" > $shared_file
echo "> Shared file created with port: [$port] in file: [$shared_file]"

#==================
# Launch app
"$SNAP/usr/bin/transmission-daemon" -f
