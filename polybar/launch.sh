If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch Polybar
echo "---" | tee -a /tmp/polybar1.log 
polybar mainbar 2>&1 | tee -a /tmp/polybar1.log & disown
