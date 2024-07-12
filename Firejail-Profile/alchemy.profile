# Custom Firejail Profile for Second Life (Alchemy Client)
# Move this file to /etc/firejail/
# Customize as needed for voice, upload directories, and other settings.

# Note: As of 15.06.2024, there is a Firejail issue: https://github.com/netblue30/firejail/issues/6372
# Adding "noblacklist /sys/module" to the profile can resolve this issue.
# A more restrictive fix is to add: noblacklist /sys/module/nvidia/initstate

# Profile Name Assignment
noblacklist ${HOME}/SL/Alchemy-Build
noblacklist ${HOME}/.alchemynext
noblacklist /sys/module

# For using Visual Studio Code as an external editor
noblacklist /opt/visual-studio-code
noblacklist ${HOME}/.config/Code
noblacklist ${HOME}/.vscode
whitelist ${HOME}/.vscode
whitelist /opt/visual-studio-code
whitelist ${HOME}/.config/Code

# Alchemy Client Directories
whitelist ${HOME}/SL/Alchemy-Build
whitelist ${HOME}/.alchemynext

# Grant access to project folder for uploads (e.g., mesh, textures, sounds)
# You can use any other paths as needed
whitelist ${HOME}/SL/SLProjects
noblacklist ${HOME}/SL/SLProjects

#Run with: firejail --profile=/etc/firejail/alchemy.profile ~/SL/Alchemy-Build/alchemy