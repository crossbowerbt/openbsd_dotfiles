# Load X settings
xrdb -load $HOME/.Xdefaults

# Set wallpaper
#xsetroot -mod 5 5 -fg black -bg '#000080'
feh --bg-fill $HOME/Pictures/forest_orange_blue.jpg

# Disable audio bell
xset b off
xset b 0 0 0

# Load default
#. /etc/X11/xinit/xinitrc

# Change path
export PATH=$PATH:$HOME/bin:/usr/local/plan9/bin

# Start windows manager

while xsetroot -name "`date +"%F %R"` | Bat: `apm -l`%, AC: `apm -a` | `hostname -s` "
do
    sleep 60
done &

exec /home/geek/Src/dwm/dwm

