--########################
--#    HYPRLAND BINDS    #
--########################

-- Key bind variables
local mainMod = "SUPER"
local terminal = "kitty --single-instance -e fish"
local fileManager = "thunar"
local menu = "rofi -show drun"
--local steam = "steam"
local spotify = "spotify"
local firefox = "firefox"
local vsCode = "code"
local telegram = "telegram-desktop"
local hyprlock = "hyprlock"
local unityhub = "unityhub"
local obs = "obs-studio"
local v2rayN = "/home/ashwolf/Downloads/VPN/v2rayN-linux-64/v2rayN"
local happ = "happ"

-- Application key binds
hl.bind(mainMod .. "+ Q", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. "+ W", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. "+ E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. "+ R", hl.dsp.exec_cmd(firefox))
hl.bind(mainMod .. "+ T", hl.dsp.exec_cmd(telegram))
--bind = $mainMod, Y
hl.bind(mainMod .. "+ U", hl.dsp.exec_cmd(unityhub))
--bind = $mainMod, I
hl.bind(mainMod .. "+ O", hl.dsp.exec_cmd(obs))
--bind = $mainMod, P
--bind = $mainMod, A
hl.bind(mainMod .. "+ S", hl.dsp.exec_cmd(spotify))
--bind = $mainMod, D, exec, $
hl.bind(mainMod .. "+ F", hl.dsp.window.fullscreen())
--bind = $mainMod, G
--bind = $mainMod, H
--bind = $mainMod, J
--bind = $mainMod, K
hl.bind(mainMod .. "+ L", hl.dsp.exec_cmd(hyprlock))
--bind = $mainMod, Z
--bind = $mainMod, X
hl.bind(mainMod .. "+ C", hl.dsp.exec_cmd(vsCode))
hl.bind(mainMod .. "+ V", hl.dsp.window.float({ action = "toggle" }))
--bind = $mainMod, B
--bind = $mainMod, N
--bind = $mainMod, M
hl.bind(mainMod .. "+ escape", hl.dsp.exit())
--bind = $mainMod, SPACE, exec, hyprctl switchxkblayout at-translated-set-2-keyboard next
hl.bind("CTRL + Q", hl.dsp.window.close())

-- Screenshot
--hl.bind("Print", hl.dsp.exec_cmd("hyprshot -m output -o ~/Pictures/Screenshots && notify-send "Screenshot" "Fullscreen saved"))
--bind = , Print, exec, grimblast --notify copysave area

-- Volume 
--hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("volctl s 5%+"))
--bind = , XF86AudioLowerVolume, exec, volctl down
--bindr = , XF86AudioRaiseVolume, exec, amixer -q set Master 2%+
--bindr = , XF86AudioLowerVolume, exec, amixer -q set Master 2%-
--bind = , XF86AudioMute, exec, /usr/bin/volctl toggle

-- Light Window
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl s 5%+"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl s 5%-"))

-- Mouse window controls
hl.bind(mainMod .. "+ mouse:272", hl.dsp.window.drag())
hl.bind(mainMod .. "+ mouse:273", hl.dsp.window.resize())

-- Window focus controls
--bind = $mainMod, left, movefocus, 1
--bind = $mainMod, right, movefocus, r
--bind = $mainMod, up, movefocus, u
--bind = $mainMod, down, movefocus, d

-- Worcspace switching
for i = 1, 10 do
    local key = i == 10 and "0" or tostring(i)
    hl.bind(mainMod .. "+ " .. key, hl.dsp.focus({ workspace = i }))
end

-- Worcspace moving
--bind = $mainMod, shift, 1, movetoworkspace, 1
--bind = $mainMod, shift, 2, movetoworkspace, 2
--bind = $mainMod, shift, 3, movetoworkspace, 3
--bind = $mainMod, shift, 4, movetoworkspace, 4
--bind = $mainMod, shift, 5, movetoworkspace, 5
--bind = $mainMod, shift, 6, movetoworkspace, 6
--bind = $mainMod, shift, 7, movetoworkspace, 7
--bind = $mainMod, shift, 8, movetoworkspace, 8
--bind = $mainMod, shift, 9, movetoworkspace, 9
--bind = $mainMod, shift, 0, movetoworkspace, 10

-- Workspace moving with mouse
--bindm = $mainMod, shift, mouse:1, movetoworkspace

-- Workspace switching with mouse
--hl.bind(mainMod .. "+ mouse_down", hl.dsp.focus({ workspace = "e+1" }))
--hl.bind(mainMod .. "+ mouse_up", hl.dsp.focus({ workspace = "e-1" }))
