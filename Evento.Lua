local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Stranger Things", "Ocean")
    local customColors = {
        SchemeColor = Color3.fromRGB(0,255,255),
        Background = Color3.fromRGB(0, 0, 0),
        Header = Color3.fromRGB(0, 0, 0),
        TextColor = Color3.fromRGB(255,255,255),
        ElementColor = Color3.fromRGB(20, 20, 20)
    }
    -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")

    MainSection:NewToggle("Infinit Speed", false, function(t)
        getgenv().trinkets = t
        while wait(0) do
        if getgenv().trinkets then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
        else
            break
        end
        end
    end)


    --Ui

     local themeTab = Window:NewTab("UI Settings")
     local themeSection = themeTab:NewSection("Theme")
     local settingsSection = themeTab:NewSection("UI")
     
     settingsSection:NewKeybind("Alterar UI", "Ligue ou deslige o UI", Enum.KeyCode.T , function()
         Library:ToggleUI()
     end)
     
     for theme, color in pairs(customColors) do
         themeSection:NewColorPicker(theme, "Change your "..theme, Color3.fromRGB(255,255,255), function(color3)
             Library:ChangeColor(theme, color3)
         end)
     end