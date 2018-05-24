--------------------------------------------------------------------------
----------------        基本变量       ---------------------
----------------        不要编辑       ---------------------
--------------------------------------------------------------------------
local current_weapon = "none"

--------------------------------------------------------------------------
----------------          基本设置          ------------------------------
--------------------------------------------------------------------------

---- 以下是对应的绑定按键 ----

---- 鼠标键位看img中的log2.png ----
---- 冲锋枪绑定鼠标按键 ----
local uzi_key = 4
local ump9_key = 5

---- 步枪5.56绑定鼠标按键 ----
local m16a4_key = 10
local m416_key = 6
local scarl_key = 7

---- 步枪7.62绑定鼠标按键 ----
local akm_key = 11

---- 键盘键位(仅限罗技键盘) ----
---- nil改成1就是键盘上的F1,以此类推 ----
local ump9_gkey = nil
local akm_gkey = nil
local m16a4_gkey = nil
local m416_gkey = nil
local scarl_gkey = nil
local uzi_gkey = nil
local set_off_gkey = nil

---- 取消按键 ----
local set_off_key = 3

---- 普通开火绑定按键(不开镜) ----
local fire_key = "Pause"
 
---- 开镜开火绑定按键(四倍镜) ----
local mode_switch_key = "capslock"
local full_mode_key = "numlock"

---- 忽略按键 ----
---- 可以使用 ----
-- "Lalt" "RAlt" --
-- "Alt" "Lshift" --
-- "Rshift" "Shift" -- 
-- "LCtrl" "RCtrl" --
---- "Ctrl" ----
local ignore_key = "lalt"
local hold_breath_key = "lshift"

---- 自动模式，枪要改为自动模式，除了m16 ----
local auto_mode = true
---- 屏息模式 ----
local hold_breath_mode = true

---- 完全模式绑定键，小键盘锁定键灯亮时为启动 ----
local full_mode_key = "numlock"
---- 按滚轮开启脚本，此时灯亮 ----
local lighton_key = "scrolllock"

---- 快速启动设置 ----
---- 按下fast_loot_key和鼠标左键快速开启 ----
---- 如果不需要快速启动就下面fastloot改为false ----
local fastloot = true
local fast_loot_key = "lctrl" 
local move = 40 ----1920*1080

--- 游戏中的灵敏度(进入游戏，控制里面默认) ---
--- 默认值是50.0 ---
local vertical_sensitivity = 0.7 -- 更新后新增的垂直速度 --
local target_sensitivity = 50
local scope_sensitivity = 50
local scope4x_sensitivity = 50
 
---- Obfs设置 ----
---- 两次射击时间间隔 = weapon_speed * interval_ratio * ( 1 + random_seed * ( 0 ~ 1))
local weapon_speed_mode = false
-- local obfs_mode = false
local obfs_mode = true
local interval_ratio = 0.75
local random_seed = 1
 
-----------------------------------------------------------
----------------         后坐力列表         -----------------
----------------   你可以在这里修复这个值   -------------------
------------------------------------------------------------
local compensation = 1 -- 补偿时间
local recoil_table = {}

recoil_table["uzi"] = {
    --     basic={16,17,18,20,21,22,23,24,25,26,28,30,32,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34},
    --     quadruple={13.3,13.3,13.3,13.3,13.3,21.7,21.7,21.7,21.7,21.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7},
    --     speed = 48
    
    basic = {18,18,18,19,19,21,24,24,30,26,30,30,34,34,38},
    basictimes = 1.7,
    
    full = {18,18,18,19,19,21,24,24,30,26,30,30,34,34,38},
    fulltimes = 1.7*0.75,
    
    holdbreathtimes = 1.25,
    
    quadruple = {18,18,18,19,19,21,24,24,30,26,30,30,34,34,38},
    quadrupletimes = 1.7,
    
    fullof4x = {18,18,18,19,19,21,24,24,30,26,30,30,34,34,38},
    fullof4xtimes = 1.7*0.75,
    
    speed = 48,
}

recoil_table["ump9"] = {
--     老版本5.56枪还没修改的
--     basic={18,19,18,19,18,19,19,21,23,24,23,24,23,24,23,24,23,24,23,24,23,24,24,25,24,25,24,25,24,25,24,25,25,26,25,26,25,26,25,26,25,26,25,26,25,26},
--     quadruple={83.3,83.3,83.3,83.3,83.3,83.3,83.3,116.7,116.7,116.7,116.7,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3},
--     speed = 92
--  新版本
    basic = {28,30,30,30,37,30,31,36,37,37,37,40,40,39,39,41,41,42,44,42,43,40,41,44,40,40,41,42,43},
    basictimes = 0.963,
	
    full = {28,30,30,30,37,30,31,36,37,37,37,40,40,39,39,41,41,42,44,42,43,40,41,44,40,40,41,42,43},
    fulltimes = 0.963*0.75,
	
    holdbreathtimes = 1.25,
	
    quadruple = {28,30,30,30,37,30,31,36,37,37,37,40,40,39,39,41,41,42,44,42,43,40,41,44,40,40,41,42,43},
    quadrupletimes = 4*0.963,
	
    fullof4x = {28,30,30,30,37,30,31,36,37,37,37,40,40,39,39,41,41,42,44,42,43,40,41,44,40,40,41,42,43},
    fullof4xtimes = 4*0.963*0.75,
	
    speed = 90,
}
 
recoil_table["m16a4"] = {
--     basic={25,25,25,29,33,33,32,33,32,32,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30},
--     quadruple={86.7,86.7,86.7,86.7,86.7,86.7,86.7,150,150,150,150,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120},
--     speed = 75
    basic ={ 47,35,38,44,58,61,70,67,73,74,72,69,72,71,72,70,72,70,69,71},
    basictimes = 1.15,
		
    full = {47,35,38,44,58,61,70,67,73,74,72,69,72,71,72,70,72,70,69,71},
    fulltimes = 1.15*0.75,
	
    holdbreathtimes = 1.25,
	
    quadruple = {47,35,38,44,58,61,70,67,73,74,72,69,72,71,72,70,72,70,69,71},
    quadrupletimes = 1.15*4,
	
    fullof4x = {47,35,38,44,58,61,70,67,73,74,72,69,72,71,72,70,72,70,69,71},
    fullof4xtimes = 4*1.15*0.75,

    speed = 80,
}
 
recoil_table["m416"] = {
--     basic={21,21,21,21,21,21,21,21,21,23,23,24,23,24,25,25,26,27,27,32,31,31,31,31,31,31,31,32,32,32,35,35,35,35,35,35,35,35,35,35,35},
--     quadruple={86.7,86.7,86.7,86.7,86.7,86.7,86.7,150,150,150,150,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7},
--     speed = 86
    basic = {49,37,38,39,43,46,47,47,48,49,50,49,55,56,58,60},
    basictimes = 1.05,

    full = {49,37,38,39,43,46,47,47,48,49,50,49,55,56,58,60},
    fulltimes = 1.05*0.75,

    holdbreathtimes = 1.25,

    quadruple = {49,37,38,39,43,46,47,47,48,49,50,49,55,56,58,60},
    quadrupletimes = 4*1.05,

    fullof4x={49,37,38,39,43,46,47,47,48,49,50,49,55,56,58,60},
    fullof4xtimes = 4*1.05*0.75,

    speed = 90,
}
 
recoil_table["scarl"] = {
--     basic={20,21,22,21,22,22,23,22,23,23,24,24,25,25,25,25,26,27,28,29,30,32,34,34,35,34,35,34,35,34,35,34,34,34,34,34,35,35,35,35,35,35,35,35,35,35},
--     quadruple={86.7,86.7,86.7,86.7,86.7,86.7,86.7,150,150,150,150,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7},
--     speed = 96
    basic={40,28,35,44,44,45,46,46,46,48,49,45,44,44,51,55},
    basictimes = 0.89,

    full={40,28,35,44,44,45,46,46,46,48,49,45,44,44,51,55},
    fulltimes = 0.89*0.75,
	
    holdbreathtimes = 1.25,
	
    quadruple={40,28,35,44,44,45,46,46,46,48,49,45,44,44,51,55},
    quadrupletimes = 4*0.89,
	
    fullof4x={40,28,35,44,44,45,46,46,46,48,49,45,44,44,51,55},
    fullof4xtimes = 4*0.89*0.75,
	
    speed = 100,

}
recoil_table["akm"] = {
    --     老版本5.56枪还没修改的
    --     basic={23.7,23.7,23.7,23.7,23.7,23.7,23.7,23.7,23.7,23.7,23.7,28,28,28,28,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7},
    --     quadruple={66.7,66.7,66.7,66.7,66.7,66.7,66.7,66.7,66.7,66.7,66.7,123.3,123.3,123.3,123.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3},
    --     speed = 100
    basic = {56,40,38,44,48,55,56,61,65,65,67,68,67,71,74,70,65,66,72,74,72,71,70,70,70,72,74,76,72},
    basictimes = 0.96,
    
    full = {56,40,38,44,48,55,56,61,65,65,67,68,67,71,74,70,65,66,72,74,72,71,70,70,70,72,74,76,72},
    fulltimes = 0.96*0.75,
    
    holdbreathtimes = 1.25,
    
    quadruple = {56,40,38,44,48,55,56,61,65,65,67,68,67,71,74,70,65,66,72,74,72,71,70,70,70,72,74,76,72},
    quadrupletimes = 4*0.96*0.99,
    
    fullof4x = {56,40,38,44,48,55,56,61,65,65,67,68,67,71,74,70,65,66,72,74,72,71,70,70,70,72,74,76,72},
    fullof4xtimes = 4*0.96*0.99*0.75,
    
    speed = 100,
}

recoil_table["none"] = {
    basic={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    basictimes = 1,
	
    full={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    fulltimes = 1,
	
    holdbreathtimes = 1,
	
    quadruple={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    quadrupletimes = 1,
	
    fullof4x={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    fullof4xtimes = 1,

    speed = 60,
}

--------------------------------------------------------------------------
----------------            功能            ------------------------------
--------------------------------------------------------------------------

-- 改变灵敏度
function convert_sens(unconvertedSens) 
    return 0.002 * math.pow(10, unconvertedSens / 50)
end
-- 计算灵敏度
function calc_sens_scale(sensitivity)
    return convert_sens(sensitivity)/convert_sens(50)
end

function light_on()
    if not IsKeyLockOn(lighton_key) then
    PressAndReleaseKey(lighton_key)
    end
end

function light_off()
    if IsKeyLockOn(lighton_key) then
    PressAndReleaseKey(lighton_key)
    end
end

-- 通过上面计算灵敏度
local target_scale = calc_sens_scale(target_sensitivity)
local scope_scale = calc_sens_scale(scope_sensitivity)
local scope4x_scale = calc_sens_scale(scope4x_sensitivity)

-- function recoil_mode()
--     if IsKeyLockOn(mode_switch_key) then
--         return "quadruple";
--     else
--         return "basic";
--     end
-- end

-- 后坐力模式 --
function recoil_mode()
    -- 普通开火模式时
    if not IsKeyLockOn(mode_switch_key) then
        if IsKeyLockOn(full_mode_key) and full_mode then
	       return "full";
		   else
		   return "basic";
        end
    end	
    
    -- 四倍镜模式开启时
    if IsKeyLockOn(mode_switch_key) then
        if IsKeyLockOn(full_mode_key) and full_mode then
		   return "fullof4x"
		   else
		   return "quadruple"
        end 
    end		
end

-- 后坐力数值计算 --
function recoil_value(_weapon,_duration)
    local _mode = recoil_mode()
    local step = (math.floor(_duration/100)) + 1
    if step > #recoil_table[_weapon][_mode] then
        step = #recoil_table[_weapon][_mode]
    end
	
    local weapon_recoil = recoil_table[_weapon][_mode][step]
    -- OutputLogMessage("weapon_recoil = %s\n", weapon_recoil)
    
    local weapon_speed = 30
    if weapon_speed_mode then
        weapon_speed = recoil_table[_weapon]["speed"]
    end
    -- OutputLogMessage("weapon_speed = %s\n", weapon_speed)

    local weapon_basictimes = recoil_table[_weapon]["basictimes"]
    local weapon_fulltimes = recoil_table[_weapon]["fulltimes"]
    local weapon_quadrupletimes = recoil_table[_weapon]["quadrupletimes"]
    local weapon_fullof4xtimes = recoil_table[_weapon]["fullof4xtimes"]
    local weapon_holdbreathtimes = recoil_table[_weapon]["holdbreathtimes"]
    local weapon_intervals = weapon_speed    
	
    if obfs_mode then
        local coefficient = interval_ratio * ( 1 + random_seed * math.random())
        weapon_intervals = math.floor(coefficient  * weapon_speed) 
    end
    -- OutputLogMessage("weapon_intervals = %s\n", weapon_intervals)

    recoil_recovery = weapon_recoil * weapon_intervals / 100 
    recoil_times = all_recoil_times * 0.7 / vertical_sensitivity 

    if recoil_mode() == "basic" then
    recoil_recovery = recoil_recovery * recoil_times * weapon_basictimes
    end
    if recoil_mode() == "basic" and hold_breath_mode and IsModifierPressed(hold_breath_key) then
    recoil_recovery = recoil_recovery * weapon_holdbreathtimes * recoil_times * weapon_basictimes
    end

    if recoil_mode() == "full" then
    recoil_recovery = recoil_recovery * recoil_times * weapon_fulltimes
    end
    if recoil_mode() == "full" and hold_breath_mode and IsModifierPressed(hold_breath_key) then
    recoil_recovery = recoil_recovery * weapon_holdbreathtimes * recoil_times * weapon_fulltimes
    end

    if recoil_mode() == "quadruple" then
    recoil_recovery = recoil_recovery * recoil_times * weapon_quadrupletimes
    end
	
    if recoil_mode() == "fullof4x" then
    recoil_recovery = recoil_recovery * recoil_times * weapon_fullof4xtimes
    end
    
    -- issues/3
    if IsMouseButtonPressed(2) then
        recoil_recovery = recoil_recovery / target_scale
    elseif recoil_mode() == "basic" then
        recoil_recovery = recoil_recovery / scope_scale
    elseif recoil_mode() == "full" then
        recoil_recovery = recoil_recovery / scope_scale
    elseif recoil_mode() == "quadruple" then
        recoil_recovery = recoil_recovery / scope4x_scale
    elseif recoil_mode() == "fullof4x" then
        recoil_recovery = recoil_recovery / scope4x_scale
    end

    return weapon_intervals,recoil_recovery
end


--------------------------------------------------------------------------
----------------            事件            ------------------------------
--------------------------------------------------------------------------

-- 鼠标事件入口 --
function OnEvent(event, arg)
    OutputLogMessage("event = %s, arg = %d\n", event, arg)
    if (event == "PROFILE_ACTIVATED") then
        EnablePrimaryMouseButtonEvents(true)
    elseif event == "PROFILE_DEACTIVATED" then
        current_weapon = "none"
        shoot_duration = 0.0
        ReleaseKey(fire_key)
        ReleaseMouseButton(1)
    end

    if (event == "MOUSE_BUTTON_PRESSED" and arg == set_off_key) 
    or (event == "G_PRESSED" and arg == set_off_gkey) then
        current_weapon = "none" light_off()
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == akm_key)
    or (event == "G_PRESSED" and arg == akm_gkey) then
        current_weapon = "akm" light_on()
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == m16a4_key)
    or (event == "G_PRESSED" and arg == m16a4_gkey) then
        current_weapon = "m16a4" light_on()
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == m416_key)
    or (event == "G_PRESSED" and arg == m416_gkey) then
        current_weapon = "m416" light_on()
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == ump9_key)
    or (event == "G_PRESSED" and arg == ump9_gkey) then
        current_weapon = "ump9" light_on()
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == uzi_key)
    or (event == "G_PRESSED" and arg == uzi_gkey) then
        current_weapon = "uzi" light_on()
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == scarl_key)
    or (event == "G_PRESSED" and arg == scarl_gkey) then
        current_weapon = "scarl" light_on()
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == 1) then
        -- button 1 : Shoot
        if ((current_weapon == "none") or IsModifierPressed(ignore_key)) then
            PressKey(fire_key)
            repeat
                Sleep(30)
            until not IsMouseButtonPressed(1)
            ReleaseKey(fire_key)
        elseif((current_weapon == "m16a4") and not IsModifierPressed(ignore_key)) then
            local shoot_duration = 0.0
            repeat
                local intervals,recovery = recoil_value(current_weapon,shoot_duration)
                PressAndReleaseKey(fire_key)
                MoveMouseRelative(0, recovery )
                Sleep(intervals)
                shoot_duration = shoot_duration + intervals
            until not IsMouseButtonPressed(1)
        else
            if auto_mode then
                PressKey(fire_key)
                local shoot_duration = 0.0
                repeat
                local intervals,recovery = recoil_value(current_weapon,shoot_duration)
                MoveMouseRelative(0, recovery )
                Sleep(intervals)
                shoot_duration = shoot_duration + intervals
                until not IsMouseButtonPressed(1)
            else
                local shoot_duration = 0.0
                repeat
                local intervals,recovery = recoil_value(current_weapon,shoot_duration)
                PressAndReleaseKey(fire_key)
                MoveMouseRelative(0, recovery )
                Sleep(intervals)
                shoot_duration = shoot_duration + intervals
                until not IsMouseButtonPressed(1)
            end
        end
    elseif (event == "MOUSE_BUTTON_RELEASED" and arg == 1) then
        ReleaseKey(fire_key)
    end
    while (event == "MOUSE_BUTTON_PRESSED" and arg == 1 and IsModifierPressed(fast_loot_key) and fastloot) do
        Sleep(10)
        PressMouseButton(1)
        Sleep(10)
        MoveMouseRelative(move, 0)
        MoveMouseRelative(move, 0)
        MoveMouseRelative(move, 0)
        Sleep(2)
        MoveMouseRelative(move, 0)
        MoveMouseRelative(move, 0)
        MoveMouseRelative(move, 0)
        Sleep(2)
        MoveMouseRelative(move, 0)
        MoveMouseRelative(move, 0)
        MoveMouseRelative(move, 0)
        Sleep(2)
        MoveMouseRelative(move, 0)
        MoveMouseRelative(move, 0)
        MoveMouseRelative(move, 0)
        Sleep(2)
        MoveMouseRelative(move, 0)
        MoveMouseRelative(move, 0)
        MoveMouseRelative(move, 0)
        Sleep(10)
        ReleaseMouseButton(1)
        Sleep(10)
        MoveMouseRelative(-move, 0)
        MoveMouseRelative(-move, 0)
        MoveMouseRelative(-move, 0)
        Sleep(2)
        MoveMouseRelative(-move, 0)
        MoveMouseRelative(-move, 0)
        MoveMouseRelative(-move, 0)
        Sleep(2)
        MoveMouseRelative(-move, 0)
        MoveMouseRelative(-move, 0)
        MoveMouseRelative(-move, 0)
        MoveMouseRelative(-move, 0)
        Sleep(2)
        MoveMouseRelative(-move, 0)
        Sleep(2)
        MoveMouseRelative(-move, 0)
        MoveMouseRelative(-move, 0)
        MoveMouseRelative(-move, 0)
        MoveMouseRelative(-move, 0)
        Sleep(10)            
        if not IsModifierPressed(fast_loot_key) then
        break
        end
    end
end
