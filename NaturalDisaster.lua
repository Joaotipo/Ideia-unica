local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Natural Disaster Survival", "Ocean")
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

	MainSection:NewButton("Gun", "Discrição", function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/Joaotipo/Ideia-unica/master/Gravitation.lua'))()

	end)

	MainSection:NewButton("Buraco Negro ", "a", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/Joaotipo/Ideia-unica/master/BuracoNegro.lua'))()
	end)
    



    --Teleport

    local tele = Window:NewTab("Teleportes")
    local TeleSelec = tele:NewSection("Teleportes")

    TeleSelec:NewButton("Lobby", "Teleporte para o Lobby", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-280, 180, 341, 1, 0, 0, 0, 1, 0, 0, 0, 1)

end)

    TeleSelec:NewButton("Mapa", "Teleporte para o Mapa", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-128.410675, 47.3999901, 5.65494823, -0.0086937556, 7.48275326e-08, -0.999962211, 3.81619358e-08, 1, 7.44985726e-08, 0.999962211, -3.75128195e-08, -0.0086937556)

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
