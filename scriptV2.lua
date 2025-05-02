-- GUI หลัก
local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
screenGui.Name = "UltimateMiningGUI"

local mainFrame = Instance.new("Frame", screenGui)
mainFrame.Size = UDim2.new(0, 300, 0, 200)
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
mainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
mainFrame.Name = "MainFrame"

-- ปุ่ม Hide/Show GUI
local toggleButton = Instance.new("TextButton", screenGui)
toggleButton.Size = UDim2.new(0, 120, 0, 40)
toggleButton.Position = UDim2.new(0, 10, 0, 10)
toggleButton.Text = "Hide GUI"
toggleButton.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
toggleButton.TextColor3 = Color3.new(1, 1, 1)
toggleButton.TextScaled = true

local isVisible = true
toggleButton.MouseButton1Click:Connect(function()
	isVisible = not isVisible
	mainFrame.Visible = isVisible
	toggleButton.Text = isVisible and "Hide GUI" or "Show GUI"
end)

-- ปุ่ม Reset Cooldown
local resetButton = Instance.new("TextButton", mainFrame)
resetButton.Size = UDim2.new(0, 180, 0, 50)
resetButton.Position = UDim2.new(0.5, -90, 0.5, -25)
resetButton.Text = "Reset Cooldown"
resetButton.BackgroundColor3 = Color3.fromRGB(100, 200, 100)
resetButton.TextColor3 = Color3.new(1, 1, 1)
resetButton.TextScaled = true

resetButton.MouseButton1Click:Connect(function()
	-- แทนที่ print ด้วยคำสั่งรีเซ็ต cooldown จริง
	print("Cooldown reset!")
end)
