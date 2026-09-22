hl.window_rule({
    name = "firefox-pip",
    match = {
        class = "firefox",
        title = "^(Picture-in-Picture)$"
    },
    float = true,
    pin = true,
    no_initial_focus = true,
    suppress_event = "maximize fullscreen"
})require("general")
require("autostart")
require("env")
require("binds")

--##################
--## PERMISSIONS ###
--##################

hl.permission("/usr/(bin|local/bin)/hyprpm", "plugin", "allow")

--####################
--## LOOK AND FEEL ###
--####################

-- Spring Curves
-- HL 0.56+ advances springs by real wall-clock time (no min tick floor).
-- Pre-0.56 soft values (mass ~2, stiffness ~15-30) feel sluggish now.
-- Speed on spring animations is largely ignored; stiffness/mass/dampening set pace.
hl.curve("spring_fast", { type = "spring", mass = 1, stiffness = 280, dampening = 26 })
hl.curve("spring_slow", { type = "spring", mass = 1, stiffness = 160, dampening = 24 })

-- Window animations
hl.animation({ leaf = "windows", enabled = true, speed = 1, spring = "spring_fast" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 1, spring = "spring_fast", style = "popin 50%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1, spring = "spring_fast", style = "popin" })

-- Border animations
hl.animation({ leaf = "border", enabled = true, speed = 1, spring = "spring_slow" })
hl.animation({ leaf = "borderangle", enabled = false })

-- Fade
hl.animation({ leaf = "fade", enabled = true, speed = 1, spring = "spring_slow" })

-- Zoom cursor
hl.animation({ leaf = "zoomFactor", enabled = true, speed = 6, spring = "spring_fast" })

-- Layer animations
hl.animation({ leaf = "layersIn", enabled = true, speed = 3, spring = "spring_fast", style = "slide" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.6, spring = "spring_fast", style = "slide" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 2, spring = "spring_fast" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.6, spring = "spring_fast" })

-- Workspace animations
hl.animation({ leaf = "workspaces", enabled = true, speed = 1, spring = "spring_fast", style = "slide" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 1, spring = "spring_fast", style = "slidevert 80%" })

hl.window_rule({
    name = "suppress-maximize-events",
    match = {
        class = ".*",
    },
    suppress_event = "maximize",
})

hl.window_rule({
    name = "fix-xwayland-drags",
    match = {
        class = "^$",
        title = "^$",
        xwayland = true,
        float = true,
        fullscreen = false,
        pin = false,
    },
    no_focus = true,
})

hl.window_rule({
    name = "move-hyprland-run",
    match = {
        class = "hyprland-run",
    },
    move = "20 monitor_h-120",
    float = true,
})

hl.window_rule({
    name = "librewolf-pip",
    match = {
        class = "librewolf",
        title = "^(Picture-in-Picture)$"
    },
    float = true,
    pin = true,
    no_initial_focus = false,
    suppress_event = "maximize fullscreen"
})

if hl.plugin.dynamic_cursors then 
	hl.config { plugin = { dynamic_cursors = {
	    enabled = true,
	    mode = "stretch",
	    threshold = 2,
	    stretch = {
	        limit = 5000,
	        activation = "quadratic",
	        window = 100,
	    },
	    shake = {
	        enabled = false,
	    },
	}}}
end

hl.config({
    general = {
        gaps_in = 5,
        gaps_out = 5,
        border_size = 2,
        col = {
            active_border = { colors = { "rgba(e13b0cff)", "rgba(ff5a1fee)" }, angle = 45 },
            inactive_border = "rgba(444444aa)",
        },
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },
    decoration = {
        rounding = 10,
        rounding_power = 2,
        active_opacity = 1.0,
        inactive_opacity = 0.92,
        shadow = {
            enabled = true,
            range = 4,
            render_power = 3,
            color = "rgba(1a1a1aee)",
        },
        blur = {
            enabled = true,
            size = 3,
            passes = 1,
            vibrancy = 0.1696,
        },
    },
    animations = {
        enabled = true,
    },
    dwindle = {
        preserve_split = true,
    },
    master = {
        new_status = "master",
    },
    misc = {
        force_default_wallpaper = -1,
        disable_hyprland_logo = false,
    },
    xwayland = {
        force_zero_scaling = true,
    },
})
