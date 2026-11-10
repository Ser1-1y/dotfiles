--################
--## AUTOSTART ###
--################

hl.on("hyprland.start", function()
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("hyprpm reload")
    hl.exec_cmd("/usr/lib/pam_kwallet_init")
    hl.exec_cmd("noctalia")

	hl.exec_cmd("hyprlock")

    hl.exec_cmd("throne")
    hl.exec_cmd("systemctl --user start app-org.kde.kdeconnect.daemon@autostart.service")
    hl.exec_cmd("gsr-ui launch-hide")
    hl.exec_cmd("easyeffects --gapplication-service")
end)
