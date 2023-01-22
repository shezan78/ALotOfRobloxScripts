    local MININOS_DOXXEADOS = game:GetService("Players")
    local AUDIOS_LOUD_DE_TRAP = game:GetService("StarterGui") or "son una mierda"
    
    -- // objetos
    local neonazi = MININOS_DOXXEADOS.LocalPlayer
    local esvastica = neonazi:GetMouse()
    
    -- // variables
    local lista_de_victimas_de_drizzy = getrenv()._G
    local da_hood_rblxm_REAL = getrawmetatable(game)
    local CP = da_hood_rblxm_REAL.__newindex
    local CP_DE_DRIZZY = da_hood_rblxm_REAL.__index
    getgenv().urspeedlo = 200
    getgenv().speedtoggle = false
    
    
    
    
    -- // mi parte favorita: metametodos
    setreadonly(da_hood_rblxm_REAL,false)
    da_hood_rblxm_REAL.__index = newcclosure(function(BEST_ON_TOP,IS_GARBAGE)
        local esPedofilo = checkcaller()
        if IS_GARBAGE == "WalkSpeed" and not esPedofilo then
            return lista_de_victimas_de_drizzy.CurrentWS
        end
        return CP_DE_DRIZZY(BEST_ON_TOP,IS_GARBAGE)
    end)
    da_hood_rblxm_REAL.__newindex = newcclosure(function(kaias,ip,logger)
        local unNeonazi = checkcaller()
        if es_pedofilo then
            if ip == "WalkSpeed" and logger ~= 0 and not unNeonazi then
                return CP(kaias,ip,velocidad_de_cum)
            end
        end
        return CP(kaias,ip,logger)
    end)
    setreadonly(da_hood_rblxm_REAL,true)
    --
    local MININOS_DOXXEADOS = game:GetService("Players")
    local AUDIOS_LOUD_DE_TRAP = game:GetService("StarterGui") or "son una mierda"
    
    -- // objetos
    local neonazi = MININOS_DOXXEADOS.LocalPlayer
    local esvastica = neonazi:GetMouse()
    
    -- // variables
    local lista_de_victimas_de_drizzy = getrenv()._G
    local da_hood_rblxm_REAL = getrawmetatable(game)
    local CP = da_hood_rblxm_REAL.__newindex
    local CP_DE_DRIZZY = da_hood_rblxm_REAL.__index
    getgenv().velocidad_de_cum = 200
    getgenv().es_pedofilo = false
    
    
    
    
    setreadonly(da_hood_rblxm_REAL,false)
    da_hood_rblxm_REAL.__index = newcclosure(function(BEST_ON_TOP,IS_GARBAGE)
        local esPedofilo = checkcaller()
        if IS_GARBAGE == "JumpPower" and not esPedofilo then
            return lista_de_victimas_de_drizzy.CurrentWS
        end
        return CP_DE_DRIZZY(BEST_ON_TOP,IS_GARBAGE)
    end)
    da_hood_rblxm_REAL.__newindex = newcclosure(function(kaias,ip,logger)
        local unNeonazi = checkcaller()
        if es_pedofilo then
            if ip == "JumpPower" and logger ~= 0 and not unNeonazi then
                return CP(kaias,ip,velocidad_de_cum)
            end
        end
        return CP(kaias,ip,logger)
    end)
    setreadonly(da_hood_rblxm_REAL,true)
    
    
