--################
--## AUTOSTART ###
--################

hl.on("hyprland.start", function()
    hl.exec_cmd("hyprlock & hypridle")
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("throne")
    hl.exec_cmd("systemctl --user start app-org.kde.kdeconnect.daemon@autostart.service")
	--hl.exec_cmd("qs -c noctalia-shell")
	-- hl.exec_cmd("noctalia -d")
	hl.exec_cmd("hyprpm reload")
	hl.exec_cmd("noctalia")
	hl.exec_cmd("/usr/lib/hyprpolkitagent/hyprpolkitagent")
	hl.exec_cmd("/usr/bin/kwalletd6")
	hl.exec_cmd("/usr/lib/pam_kwallet_init")
    --hl.exec_cmd("feh 'https://tenor.com/view/cat-cat-sucking-on-finger-cat-sucking-kitty-kitty-sucking-on-finger-gif-16253711665381478420'")
end)

