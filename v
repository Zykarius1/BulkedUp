loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
wait(0.2)
getgenv().autoGems = true;
getgenv().unRagdoll = true;





local Players = game:GetService("Players");
local vim = game:GetService("VirtualInputManager");
local replicated = game:GetService("ReplicatedStorage")

local Plr = Players.LocalPlayer;
local Char = Plr.Character or Plr.CharacterAdded:Wait();
local Backpack = Plr.Backpack;

task.spawn(function()
    while task.wait(0.1) do
        if getgenv().autoGems then
            for i,v in pairs(workspace:GetChildren()) do
                if v:IsA("Part") and v.Name == "Gem" then
                    v.CFrame = Char.HumanoidRootPart.CFrame
                end
            end
        end
    end
end)


task.spawn(function()
    while task.wait(0.1) do
        if getgenv().unRagdoll then
            replicated.Events.unRagdoll:FireServer(Char)
        end
    end
end)
