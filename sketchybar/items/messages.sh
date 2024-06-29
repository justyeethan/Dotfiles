# Load global styles, colors and icons
source "$CONFIG_DIR/globalstyles.sh"

messages=(
	"${notification_defaults[@]}"
	icon=􀌤
	icon.font.size=15.0
	background.color=$(getcolor green)
	updates=on
	script="$PLUGIN_DIR/messages.sh"
	click_script="open -a /System/Applications/Messages.app"
)

sketchybar --add item messages right \
	--set messages "${messages[@]}" \
	--subscribe messages front_app_switched

