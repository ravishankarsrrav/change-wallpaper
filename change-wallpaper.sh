#!/bin/sh
if [ -z "$WALLPAPER_FOLDER" ]; then
        echo >&2 'Error:  You need to specify WALLPAPER_FOLDER'
        exit 1
fi
# randomly pick wallpaper from the specified folder
wallpaper=$(ls ${WALLPAPER_FOLDER}/* | shuf -n 1)

# func to set the wallpaper
setWallpaper()
{
	dconf write "/org/gnome/desktop/background/picture-uri" "'file://${1}'"
}

# set the wallpaper
setWallpaper ${wallpaper}
