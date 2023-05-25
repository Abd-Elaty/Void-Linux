# Change volume
arg=$1
[ $arg = "up"     ] && amixer set Master 10%+
[ $arg = "down"   ] && amixer set Master 10%-
[ $arg = "toggle" ] && amixer set Master toggle+

# Send a signal to dwmblocks
#pkill -RTMIN+30 dwmblocks


