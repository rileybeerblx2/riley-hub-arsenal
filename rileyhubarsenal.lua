local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local PhantomForcesWindow = Library:NewWindow("Arsenal Stuff")

local KillingCheats = PhantomForcesWindow:NewSection("Kill Options")

KillingCheats:CreateButton("Inf Ammo", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/rileybeerblx2/Aimbot-Lua/main/infiniteammoarsenal.lua"))()
end)

KillingCheats:CreateButton("RGB Gun", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/rileybeerblx2/Aimbot-Lua/main/rgbgunarsenal.lua"))()
end)

KillingCheats:CreateButton("Rapid Fire", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/rileybeerblx2/Aimbot-Lua/main/fasterfireraterapidfirearsenal.lua"))()
end)
