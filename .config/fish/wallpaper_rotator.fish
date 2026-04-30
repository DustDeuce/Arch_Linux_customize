function wallpaper_rotator
    set WALLPAPER_DIR "$HOME/Dust/Display_2"
    set INTERVAL 20  # 5 минут
    
    # 🎨 Настройки анимации
    set TRANSITION_FPS 60        # Плавность (30-60)
    set TRANSITION_DURATION 2.0  # Длительность в секундах

    # Функция проверки и запуска демона
    function _ensure_daemon
        if not pgrep -x "awww-daemon" > /dev/null
            awww-daemon &
            sleep 2
        end
    end
    
    # Запускаем демона
    _ensure_daemon
    
    while true
        set WALLPAPER (find "$WALLPAPER_DIR" -type f \( -name "*.jpg" -o -name "*.png" -o -name "*.jpeg" -o -name "*.webp" \) | shuf -n 1)
        
        if test -n "$WALLPAPER"
            awww img "$WALLPAPER" \
                --transition-type random \
                --transition-fps "$TRANSITION_FPS" \
                --transition-duration "$TRANSITION_DURATION"
            
            # Если ошибка — перезапускаем демона
            if test $status -ne 0
                echo "Daemon error, restarting..."
                pkill -x "awww-daemon"
                _ensure_daemon
                awww img "$WALLPAPER"
            end
        end
        
        sleep $INTERVAL
    end
end
