v485:AddToggle({
    Name = "Auto Farm Bone",
    Default = true,
    Callback = function(v)
        _G.FarmBone = v
    end
})

spawn(function()
    while task.wait() do
        if _G.FarmBone then
            pcall(function()
                local root = game.Players.LocalPlayer.Character.HumanoidRootPart
                local target = nil
                for _, enemy in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if (enemy.Name == "Reborn Skeleton" or enemy.Name == "Living Zombie" or enemy.Name == "Demonic Soul" or enemy.Name == "Posessed Mummy") and enemy.Humanoid.Health > 0 then
                        target = enemy
                        break
                    end
                end
                
                if target then
                    local dist = (root.Position - target.HumanoidRootPart.Position).Magnitude
                    if dist > 15 then
                        local tween = game:GetService("TweenService"):Create(root, TweenInfo.new(dist/300, Enum.EasingStyle.Linear), {CFrame = target.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0)})
                        tween:Play()
                        repeat task.wait() until (root.Position - target.HumanoidRootPart.Position).Magnitude < 15 or not _G.FarmBone
                    end
                    
                    repeat
                        task.wait()
                        EquipWeapon(_G.SelectWeapon)
                        AutoHaki()
                        root.CFrame = target.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                        root.Velocity = Vector3.new(0, 0, 0)
                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                    until not _G.FarmBone or not target.Parent or target.Humanoid.Health <= 0
                end
            end)
        end
    end
end)
