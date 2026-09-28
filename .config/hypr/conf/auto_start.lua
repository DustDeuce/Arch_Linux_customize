--################################
--#    AUTOSTART APPLICATIONS    #
--################################

local firefox = "firefox"
local steam = "steam"
local v2rayN = "/home/ashwolf/Downloads/VPN/v2rayN-linux-64/v2rayN"

hl.on("hyprland.start", function()
    -- D-bus сессия и окружение
    hl.exec_cmd("dbus-daemon --session --address=unix:path=$XDG_RUNTIME_DIR/bus")
    hl.exec_cmd("sleep 2 && export DBUS_SESSION_BUS_ADDRESS=unix:path=$XDG_RUNTIME_DIR/bus")

    -- Импорт окружения
    hl.exec_cmd("dbus-update-activation-environment --all")
    hl.exec_cmd("systemctl --user import-environment DISPLAY WAYLAND_DISPLAY XDG_CURRENT_DESKTOP HYPRLAND_INSTANCE_SIGNATURE")

    -- Polkit и Keyring
    hl.exec_cmd("/usr/bin/gnome-keyring-daemon --start --components=secrets")
    hl.exec_cmd("/usr/lib/polkit-gnome-authentication-agent-1")

    -- Автомонтирование
    hl.exec_cmd("udiskie --no-notify --tray")

    -- Приложения
    hl.exec_cmd(firefox)
    hl.exec_cmd(steam)

    -- Обои и карусель
    hl.exec_cmd("aww-daemon")
    hl.exec_cmd("fish -c 'wallpaper_rotator'")
    hl.exec_cmd("sww-daemon")
    hl.exec_cmd("sww img /home/ashwolf/Dust/Display_2/forgotten_by_fate_by_pndora_dinlknh.png")

    -- Системные утилиты
    hl.exec_cmd("hypridle")
    hl.exec_cmd("hyprctl setcursor Silver-Wolf 24")
    hl.exec_cmd("waybar")
    hl.exec_cmd("nm-applet")
    hl.exec_cmd("volctl")

    -- Настройки GTK/QT и прочее
    hl.exec_cmd('sleep 1 && gsettings set org.gnome.desktop.interface icon-theme "Sours-Full-Color"')
    hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-theme Silver-Wolf")
    hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-size 24")
    hl.exec_cmd("gsettings set org.gnome.desktop.interface icon-theme 'Papirus'")
    hl.exec_cmd("xhost +si:localuser:root")

end)
