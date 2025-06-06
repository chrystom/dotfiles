#
# ~/.zprofile
#

[[ -f ~/.zshrc ]] && . ~/.zshrc

# firefox + other games need these
export DISPLAY=:0
export SDL_VIDEODRIVER=wayland
export __GL_THREADED_OPTIMIZATIONS=0
# some vulkan dev environments need these (doesnt work with CS2)
#export VK_LAYER_PATH=/usr/share/vulkan/explicit_layer.d
#export VK_ICD_FILENAMES=/usr/share/vulkan/icd.d

# clean up my /home
export NUGET_PACKAGES="$XDG_CONFIG_HOME"/NuGetPackages
export DUB_HOME="$XDG_CONFIG_HOME"/dub

# uses desktop file from /usr/share/wayland-sessions
# ALWAYS place startup script at bottom of profile files
if uwsm check may-start; then
	exec uwsm start hyprland-uwsm.desktop
fi
