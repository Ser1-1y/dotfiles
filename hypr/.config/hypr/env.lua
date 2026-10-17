--############################
--## ENVIRONMENT VARIABLES ###
--############################

local home = os.getenv("HOME")

hl.env("XCURSOR_THEME", "Bibata-Modern-Classic")

hl.env("XCURSOR_SIZE",    "24")
hl.env("HYPRCURSOR_SIZE", "24")

hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_QPA_PLATFORM",      "wayland")
hl.env("GTK_THEME",            "Breeze-Dark")

hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")
hl.env("XDG_MENU_PREFIX",              "arch-")

--##########
--## XDG ###
--##########

local xdg = true

if xdg then
    local config = home .. "/.config"
    local data   = home .. "/.local/share"
    local cache  = home .. "/.cache"
    local state  = home .. "/.local/state"

    hl.env("XDG_CONFIG_HOME", config)
    hl.env("XDG_DATA_HOME",   data)
    hl.env("XDG_CACHE_HOME",  cache)
    hl.env("XDG_STATE_HOME",  state)

    hl.env("GNUPGHOME",     data   .. "/gnupg")
    hl.env("WAKATIME_HOME", config .. "/wakatime")
    hl.env("OLLAMA_MODELS", data   .. "/ollama/models")

    hl.env("ANDROID_USER_HOME", data .. "/android")
    hl.env("ANDROID_AVD_HOME",  data .. "/android/avd")

    hl.env("NUGET_PACKAGES",  cache .. "/NuGetPackages")
    hl.env("DOTNET_CLI_HOME", data  .. "/dotnet-cli")
    hl.env("DOTNET_BUNDLE_EXTRACT_BASE_DIR", cache .. "/dotnet_bundle_extract")

    hl.env("GRADLE_USER_HOME", data   .. "/gradle")
    hl.env("WINEPREFIX",       data   .. "/wine")
    hl.env("GTK2_RC_FILES",    config .. "/gtk-2.0/gtkrc")

    local tools = data .. "/dotnet-cli/.dotnet/tools"
    local path  = os.getenv("PATH") or ""
    if not path:find(tools, 1, true) then
        hl.env("PATH", path .. ":" .. tools)
    end
end
