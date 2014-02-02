# X settings
xrdb -merge .Xresources && 

setxkbmap -layout "us,ru" -option "grp:caps_toggle,grp_led:scroll"

# Java fix
wmname LG3D &&

# Start WM 
exec awesome >> ~/.cache/awesome/stdout 2 >> ~/.cache/awesome/stderr

# MPD daemon start (if no other user instance exists)
[ ! -s ~/.config/mpd/pid ] && mpd

# MPD scrobbler daemon start
[[ -z $(pgrep -xU $UID mpdas) ]] && mpdas &
