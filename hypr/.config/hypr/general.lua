--##############
--## GENERAL ###
--##############



--###############
--## MONITORS ###
--###############


hl.monitor({
    output = "HDMI-A-1",
    mode = "1920x1080@74.97",
    position = "auto",
    scale = "1",
})

hl.monitor({
   output = "eDP-1",
   mode = "2560x1600@120.00",
   position = "auto",
   scale = "1",
})

-- hl.monitor({
--     output = "eDP-1",
--     mode = "2560x1600@60.00",
--     position = "auto",
--     scale = "1",
-- })
--##################
--## MY PROGRAMS ###
--##################

terminal = "kitty"
fileManager = "dolphin"
menu = "tofi-drun --drun-launch=true"
