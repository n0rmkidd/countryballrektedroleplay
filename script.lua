local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/n0rmkidd/countryballrektedroleplay/main/uiengine.lua"))()

local name = "Countryball Rekted Roleplay"

if identifyexecutor then
    name = name.." - "..identifyexecutor()
end

local WindowOptions = {
    min_size = Vector2.new(500, 400),
    toggle_key = Enum.KeyCode.RightShift,
    can_resize = true
}

local Window = library:AddWindow(name, WindowOptions)
local trol = Window:AddTab("main")

local Box = trol:AddTextBox("Name All", nil, {["clear"] = false})
trol:AddSwitch("Name All", function(on)
    local text = Box.Text
    if on == true then
        for i,v in pairs(game.Workspace:GetDescendants()) do
    if v:IsA("RemoteEvent") and v.Parent.ClassName == "Model" and v.Parent.Parent.ClassName == "Model" then
        v:FireServer(text)
    end
end
end
end)
trol:AddSwitch("Give Btools (Need 150 coins)", function(on)
       local args = {
    [1] = game:GetService("ReplicatedStorage").Tools.Btools,
    [2] = game:GetService("ReplicatedStorage").Tools.Burger.Cost
}

game:GetService("ReplicatedStorage").BuyTool:InvokeServer(unpack(args))
end)
