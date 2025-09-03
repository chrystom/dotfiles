#
# ~/.zprofile
#

[[ -f ~/.zshrc ]] && . ~/.zshrc

# firefox + other games need these
#export DISPLAY=:0 (dont set this yet)
export SDL_VIDEODRIVER=wayland
export __GL_THREADED_OPTIMIZATIONS=0

# some vulkan dev environments need these (doesnt work with CS2)
#export VK_LAYER_PATH=/usr/share/vulkan/explicit_layer.d
#export VK_ICD_FILENAMES=/usr/share/vulkan/icd.d

# uses desktop file from /usr/share/wayland-sessions
# ALWAYS place startup script at bottom of profile files
if [ -z "$DISPLAY" ] && [ "$XDG_SESSION_TYPE" != "wayland" ] && [ -z "$SSH_CONNECTION" ]; then
	exec Hyprland
fi
