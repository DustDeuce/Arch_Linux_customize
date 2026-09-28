--############################
--#       #
--############################

hl.config({
    general = {
        gaps_in = 5,
        gaps_out = 20,
        border_size = 2,
        col = {
            active_border = { colors = {"rgba(33ccffee)"} },
            inactive_border = { colors = {"rgba(595959aa)"} },
        },

        layout=dwindle,
    },
})

--############################
--#    GENERAL APPEARANCE    #
--############################

hl.config({
    gestures = {
        -- Дополнительные настройки для более привычного поведения (опционально)
        workspace_swipe_forever = true,      -- Разрешить свайп за пределы существующих рабочих столов (создавая новые)
        workspace_swipe_distance = 500,      -- Расстояние свайпа для срабатывания (пиксели)
        workspace_swipe_invert = false,      -- Обратное направление (false = свайп влево -> след. рабочее место)
        workspace_swipe_min_speed_to_force = 30,  -- Мин. скорость для принудительного переключения
        workspace_swipe_cancel_ratio = 0.5,  -- Порог отмены свайпа
    },
})

-- Регистрируем сам жест отдельно
hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace",
})
