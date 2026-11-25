-- Hyprland Keybinds Module --

local mainMod = "SUPER"

-- Programs
local terminal = "ghostty"
local fileManager = "dolphin"
local menu = "walker --height 848"
local browser = "firefox"
local colorPicker = "hyprpicker"
local notes = "obsidian"

-- Launch programs
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd("omni-menu.sh"))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd(notes))
hl.bind(mainMod .. " + P", hl.dsp.exec_cmd("hyprshot -m region --clipboard-only"))
hl.bind(mainMod .. " + SHIFT + P", hl.dsp.exec_cmd(colorPicker .. " -a"))

-- Window Control

hl.bind(mainMod .. " + C", hl.dsp.window.close())
hl.bind(mainMod .. " + V", hl.dsp.window.float())

-- Layout specific (dwindle & master)
hl.bind(mainMod .. " + period", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + comma", hl.dsp.layout("togglesplit"))

hl.bind(mainMod .. " + m", hl.dsp.layout("focusmaster"))
hl.bind(mainMod .. " + SHIFT + m", hl.dsp.layout("swapwithmaster master ignoremaster"))

-- Windows: focus
hl.bind(mainMod .. " + Left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + Down", hl.dsp.focus({ direction = "down" }))
hl.bind(mainMod .. " + Up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + Right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + h", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + j", hl.dsp.focus({ direction = "down" }))
hl.bind(mainMod .. " + k", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + l", hl.dsp.focus({ direction = "right" }))

-- Windows: move & swap
hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.move({ direction = "down" }))
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.move({ direction = "right" }))

hl.bind(mainMod .. " + CTRL + H", hl.dsp.window.swap({ direction = "left" }))
hl.bind(mainMod .. " + CTRL + J", hl.dsp.window.swap({ direction = "down" }))
hl.bind(mainMod .. " + CTRL + K", hl.dsp.window.swap({ direction = "up" }))
hl.bind(mainMod .. " + CTRL + L", hl.dsp.window.swap({ direction = "right" }))

-- Mouse move / resize
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Workspaces: focus (1-9)
for i = 1, 9 do
    hl.bind(mainMod .. " + " .. i, hl.dsp.focus({ workspace = i }))
end

-- Workspaces: move windows
for i = 1, 9 do
    hl.bind(mainMod .. " + SHIFT + " .. i, hl.dsp.window.move({ workspace = i, follow = true }))
end

-- Special workspace (scratchpad)
hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic", follow = false }))

-- Fullscreen & split ratio
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ action = "toggle", mode = "fullscreen", layout_aware = true }))

hl.bind(mainMod .. " + equal", hl.dsp.layout("splitratio 1.0 exact"))
hl.bind(mainMod .. " + SHIFT + minus", hl.dsp.layout("splitratio 1.33 exact"))
hl.bind(mainMod .. " + SHIFT + equal", hl.dsp.layout("splitratio 0.05"))
hl.bind(mainMod .. " + minus", hl.dsp.layout("splitratio -0.05"))

-- Multimedia Keys
local media_repeat_locked = { repeating = true, locked = true }
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 2%+"), media_repeat_locked)
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 2%-"), media_repeat_locked)
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), media_repeat_locked)
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), media_repeat_locked)
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), media_repeat_locked)
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), media_repeat_locked)

-- Media keys requiring playerctl
local media_locked = { locked = true }
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), media_locked)
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), media_locked)
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), media_locked)
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), media_locked)
