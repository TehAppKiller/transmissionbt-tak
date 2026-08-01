# transmissionbt-tak
[![transmissionbt-tak](https://snapcraft.io/transmissionbt-tak/badge.svg)](https://snapcraft.io/transmissionbt-tak)
![snap arch](https://badgen.net/snapcraft/architecture/transmissionbt-tak)
![snap size](https://badgen.net/snapcraft/size/transmissionbt-tak/amd64/stable)

## Snap Description
UnOfficial release of Transission bittorrent for Server with WebUI only\
https://snapcraft.io/transmissionbt-tak

(For Desktop edition see [transmissionbt-desktop-tak](https://github.com/TehAppKiller/transmissionbt-desktop-tak))

## Transmission BT Description
<img src="/icon.svg" width="100">
Transmission is a Fast, Easy and Free Bittorrent Client.

See https://transmissionbt.com for more details.

## Information
The web interface is accessible by default at http://localhost:9091

Transmission BT Release\
Utils (transmission-create, -edit, -show) are accessible directly\
Service is restarted on any condition.

Post install commands required to access `/media` and `/mnt` folders and see resources:
```
sudo snap connect transmissionbt-tak:removable-media
sudo snap connect transmissionbt-tak:mount-observe
```

No password required by default ; logs accessible through:
```
sudo snap logs transmissionbt-tak
```

**!!! Files can only be written in a directory owned by `root` !!!**\
**!!! `/home` base directory content is not readable !!!**

This is due to current behavior and restrictions of snaps by Canonical.\
Check common doc in FAQ if you want to setup data in `/home` directory.

## FAQ
See common doc about [FAQ](https://github.com/TehAppKiller/Snapcraft-common-doc/tree/main#FAQ).

### How to access Configuration file
You can access the snap data in 2 ways:

#### - Directly
With default snapd installation:
```
/root/snap/transmissionbt-tak/current/.config/transmission-daemon/settings.json
```

#### - Via shell
In shell mode you can edit the file with Vim:
```
sudo snap run --shell transmissionbt-tak.transmissionbt
vi $HOME/.config/transmission-daemon/settings.json
```
One help sheet of Vim commands available [here](https://devhints.io/vim).

## Building
See common doc about [building a snap](https://github.com/TehAppKiller/Snapcraft-common-doc/tree/main#Building).

## Versionning
See common doc about [versionning](https://github.com/TehAppKiller/Snapcraft-common-doc/tree/main#Versionning).
