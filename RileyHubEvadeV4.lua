local c = loadstring(game:HttpGet("https://pastebin.com/raw/RmLqTugH"))()
local d = loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/SimpleHighlightESP.lua"))()
local e = loadstring(game:HttpGet("https://raw.githubusercontent.com/9Strew/roblox/main/proc/kiriotesp"))()

e.Enabled = false;
e.Tracers = false;
e.Boxes = false;
local f = c.CreateLib("Riley Hub (Evade) - V4","Ocean")

function Simple_Create(i,j,k,l)
local m = Instance.new('BillboardGui',game.CoreGui)
m.Adornee = i;
m.ExtentsOffset=Vector3.new(0,1,0)
m.AlwaysOnTop=true;
m.Size=UDim2.new(0,6,0,6)
m.StudsOffset = Vector3.new(0,1,0)
m.Name = k;
local n = Instance.new('Frame',m)
n.ZIndex = 10;
n.BackgroundTransparency=0.3;
n.Size = UDim2.new(1,0,1,0)
n.BackgroundColor3=Color3.fromRGB(255,0,0)

local o = Instance.new('TextLabel',m)
o.ZIndex = 10;
o.BackgroundTransparency=1; 
o.Position=UDim2.new(0,0,0,-48)
o.Size = UDim2.new(1,0,10,0)
o.Font = 'ArialBold'
o.FontSize ='Size12'
o.Text = j;
o.TextStrokeTransparency = 0.5;
o.TextColor3 = Color3.fromRGB(255,0,0)

local p = Instance.new('TextLabel',m)
p.ZIndex = 10;
p.BackgroundTransparency = 1;
p.Position = UDim2.new(0,0,0,-35)
p.Size = UDim2.new(1,0,10,0)
p.Font = 'ArialBold'
p.FontSize = 'Size12'
p.Text = tostring(l).." Studs"
p.TextStrokeTransparency = 0.5;
p.TextColor3 = Color3.new(255,255,255)
end;

function ClearESP(q)
for r,s in pairs(game.CoreGui:GetChildren()) do
	 if s.Name==q 
	 and s:isA('BillboardGui')
	 then
		  s:Destroy()
		  end
		   end 
		   end;
		   
		   local t = false;
		   local u = false;
		   local v = false;
		   local w = false;
		   local x = false;
		   local y = false;
		   local z = false;
		   local A = false;
		   local B = game:GetService("ReplicatedStorage")
		   local C = game:GetService("CoreGui")
		   local D = game:GetService("Workspace")
		   local E = game:GetService("Lighting")
		   local F = game:GetService("VirtualInputManager")
		   local G = game:GetService("Workspace").Game.Players;
		   local H = game:GetService('Players')
		   local I = H.LocalPlayer;
		   local J = B:WaitForChild("Events",1337)
		   local K = H.LocalPlayer;
		   getgenv().money = true;
		   getgenv().revivedie = true;
		   getgenv().autowistle = true;
		   getgenv().autochat = true;
		   getgenv().AutoDrink = true;
		   getgenv().NoCameraShake = true;
		   getgenv().Settings = {moneyfarm = false, afkfarm = false, NoCameraShake = false, Speed=1450, Jump = 3, reviveTime=3}
		   local L = function() for r,s in pairs(G:GetChildren()) do
			    if not H:FindFirstChild(s.Name)
				then return s end
				 end 
				 end;
				 local M = function() for N,s in pairs(G:GetChildren())
				 do if s:GetAttribute("Downed")
				 then return s
				  end 
				  end
				   end;
				   local O = function()
				   local P = M()if P~= nil 
				   and P:FindFirstChild('HumanoidRootPart')
				   then 
					   
					   task.spawn(function()
					   while task.wait() do 
						   if I.Character
						    then
							workspace.Game.Settings:SetAttribute("ReviveTime",2.2)
							I.Character:FindFirstChild('HumanoidRootPart').CFrame=CFrame.new(P:FindFirstChild('HumanoidRootPart').Position.X,P:FindFirstChild('HumanoidRootPart').Position.Y+3,P:FindFirstChild('HumanoidRootPart').Position.Z)
							task.wait()game:GetService("ReplicatedStorage").Events.Revive.RevivePlayer:FireServer(tostring(P),false)
							task.wait(4.5)game:GetService("ReplicatedStorage").Events.Revive.RevivePlayer:FireServer(tostring(P),true)
							game:GetService("ReplicatedStorage").Events.Revive.RevivePlayer:FireServer(tostring(P),true)
							game:GetService("ReplicatedStorage").Events.Revive.RevivePlayer:FireServer(tostring(P),true)
							break
							 end 
							 end 
							 end)
							 end
							  end;

							  task.spawn(function()
							  while task.wait() do
								   if Settings.AutoRespawn 
								    then 
										if I.Character and I.Character:GetAttribute("Downed")
										then 
											game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
											end 
											end;
											if Settings.moneyfarm
											 then
												  if I.Character and I.Character:GetAttribute("Downed")
												  then
													   game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
													   
													   task.wait(3)
													   else
													    O()task.wait(1)
														end 
														end;
														if Settings.moneyfarm == false and Settings.afkfarm and I.Character:FindFirstChild('HumanoidRootPart')~=nil 
														then 
															I.Character:FindFirstChild('HumanoidRootPart').CFrame=CFrame.new(6007,7005,8005)
															end 
															end 
															end)
															
															function autodrink()
															while AutoDrink == true
															 do 
																 local Q = "Cola"game:GetService("ReplicatedStorage").Events.UseUsable:FireServer(Q)wait(6)
																 end 
																 end;

																 function SpamChat()
																 while autochat == true 
																 do 
																	 local Q = "Hydra Network on top (Bro using Hydra Network script damn)"
																	 local R = "All"
																	 game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Q,R)
																	 wait(1)
																	 end 
																	 end;

																	 function autowistlefunction()
																	 while autowistle == true
																	  do 
																		  local Q = "Whistle"
																		  local S = true;
																		  game:GetService("Players").LocalPlayer.PlayerScripts.Events.KeybindUsed:Fire(Q,S)game:GetService("ReplicatedStorage").Events.Whistle:FireServer()
																		  wait(5)
																		  end
																		   end;

																		   function god()while revivedie == true
																		    do 
																				game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
																				wait()
																				end
																				 end;
																				 
																				 function dofullbright()
																				 Light.Ambient = Color3.new(1,1,1)
																				 Light.ColorShift_Bottom = Color3.new(1,1,1)
																				 Light.ColorShift_Top = Color3.new(1,1,1)
																				 game.Lighting.FogEnd = 100000;
																				 game.Lighting.FogStart = 0;
																				 game.Lighting.ClockTime = 14;
																				 game.Lighting.Brightness = 2;
																				 game.Lighting.GlobalShadows = false 
																				 end;
																				 
																				 function freemoney()
																				 while money == true 
																				 do
																					  local Q = "Free money <font color=\"rgb(100,255,100)\">($99999)</font>"
																					  game:GetService("Players").LocalPlayer.PlayerGui.HUD.Messages.Use:Fire(Q)
																					  wait(5)
																					  end 
																					  end;

																					  local T = f:NewTab("Welcome")
																					  local U = T:NewSection("Hello, "..game.Players.LocalPlayer.Name)
																					  local V = f:NewTab("Main")
																					  local W = V:NewSection("Player Modifications")
																					  local X = f:NewTab("Visuals")
																					  local Y = X:NewSection("ESP")
																					  local Z = f:NewTab("Mics")
																					  local _ = Z:NewSection("Few Options")
																					  local a0 = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
																					  
																					  U:NewButton("Player: "..game.Players.LocalPlayer.Name.." | "..game.Players.LocalPlayer.UserId,"?",function()
																					  print("made by riley")
																					  end)
																					  
																					  U:NewButton("Game: "..game.PlaceId.." | "..a0.Name,"?",function()
																					  print("made by riley")
																					  end)
																					  
																					  U:NewButton("Account Age: "..game.Players.LocalPlayer.AccountAge.." | Premium : Not Available","?",function()
																					  print("hi")
																					  end)
																					  
																					  U:NewButton("Discord | Click To Copy","?",function()
																					  setclipboard("https://discord.gg/GZhUvV5gJy")
																					  end)

																					  W:NewSlider("Walkspeed","?",250,0,function(s)
																					  a1=s
																					   end)
																					   
																					   W:NewSlider("JumpPower","?",120,0,function(s)
																					   Settings.Jump=s 
																					   end)

																					   W:NewSlider("Hip Height","?",100,-1.40,function(s)
																					   game.Players.LocalPlayer.Character.Humanoid.HipHeight=s
																					    end)
																						
																						W:NewSlider("FOV","?",120,1,function(s)
																						local Q="FieldOfView"
																						local a2=s;
																						game:GetService("ReplicatedStorage").Events.UpdateSetting:FireServer(Q,a2)
																						end)
																				local a3=false;
																				
																				W:NewToggle("Infinte Jumps","?",function(s)
																				a3=true 
																				end)
																				game:GetService("UserInputService").JumpRequest:connect(function()
																				if a3 
																				then 
																					game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
																					end 
																					end)
																					local M=function()
																					for N,s in pairs(G:GetChildren()) do 
																						if s:GetAttribute("Downed")
																						then return s
																						 end
																						  end 
																						  end;
																						  
																						  W:NewButton("Respawn","?",function()
																						  game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
																						  end)
																						  
																						  W:NewToggle("Auto Respawn","?",function(s)
																						  Settings.AutoRespawn=s
																						   end)

																						   W:NewLabel("AutoFarms")
																						   W:NewToggle("AFK Farm","?",function(a4)
																						   local a5=I.Character:FindFirstChild("HumanoidRootPart").CFrame;
																						   if a4 then I.Character:FindFirstChild('HumanoidRootPart').CFrame=CFrame.new(6007,7005,8005)
																						   else
																						    I.Character:FindFirstChild("HumanoidRootPart").CFrame=a5
																							 end
																							  end)
																							  function O()
																							  local P=M()if P~=nil
																							   and 
																							   P:FindFirstChild('HumanoidRootPart')
																							   then 
																							   task.spawn(function()
																							   while task.wait()
																							   do 
																								   if I.Character
																								    then workspace.Game.Settings:SetAttribute("ReviveTime",2.2)
																									I.Character:FindFirstChild('HumanoidRootPart').CFrame=CFrame.new(P:FindFirstChild('HumanoidRootPart').Position.X,P:FindFirstChild('HumanoidRootPart').Position.Y+3,P:FindFirstChild('HumanoidRootPart').Position.Z)
																									task.wait()
																									game:GetService("ReplicatedStorage").Events.Revive.RevivePlayer:FireServer(tostring(P),false)
																									task.wait(4.5)
																									game:GetService("ReplicatedStorage").Events.Revive.RevivePlayer:FireServer(tostring(P),true)
																									game:GetService("ReplicatedStorage").Events.Revive.RevivePlayer:FireServer(tostring(P),true)
																									game:GetService("ReplicatedStorage").Events.Revive.RevivePlayer:FireServer(tostring(P),true)
																									break
																									 end
																									  end
																									   end)
																									   end 
																									   end;
																									   
																									   W:NewToggle("Money Farm","?",function(a4)
																									   Settings.moneyfarm=a4
																									    end)
																										
																										W:NewToggle("Ticket Farm","?",function(s)
																										x=s
																										 end)

																										 W:NewLabel("Some Other Features")
																										 W:NewToggle("Fast Revive","?",function(a4)
																										 if a4 then 
																											 workspace.Game.Settings:SetAttribute("ReviveTime",2.2)
																											 else 
																											 workspace.Game.Settings:SetAttribute("ReviveTime",3)
																											 end 
																											 end)

																											 Y:NewButton("Player ESP","Highlights all characters to make them easier to see.",function()
																											 d:ClearESP()
																											 t=true;
																											 for N,s in ipairs(H:GetPlayers()) do 
																												 if s~=K 
																												 then s.CharacterAdded:Connect(function(a6)
																												 d:AddOutline(a6)
																												 d:AddNameTag(a6)
																												 end)
																												 if s.Character
																												  then
																													   d:AddOutline(s.Character)
																													   d:AddNameTag(s.Character)
																													   end 
																													   end 
																													   end 
																													   end)

																													   Y:NewToggle("Bots ESP","?",function(s)
																													   u=s 
																													   end)
																													   
																													   Y:NewToggle("Ticket ESP","?",function(s)
																													   e.TicketEsp=s 
																													   end)
																													   
																													   task.spawn(function()
																													   while task.wait(0.05) do 
																														   if u then pcall(function()ClearESP("AI_Tracker")
																														   local a7=D:WaitForChild("Game",1337).Players;
																														   for N,s in pairs(a7:GetChildren()) do 
																															   if not game.Players:FindFirstChild(s.Name) then 
																																   local l = K:DistanceFromCharacter(s.PrimaryPart.Position)
																																   Simple_Create(s.HumanoidRootPart,s.Name,"AI_Tracker",math.floor(l+0.5))
																																   end 
																																   end 
																																   end)
																																   else 
																																   ClearESP("AI_Tracker")
																																   end 
																																   end
																																    end)
																																	e:AddObjectListener(game:GetService("Workspace").Game.Effects.Tickets,{CustomName="Ticket",Color=Color3.fromRGB(41,180,255),IsEnabled="TicketEsp"})
																																	game:GetService("Players").PlayerAdded:Connect(function(K)
																																	K.CharacterAdded:Connect(function(a6)
																																	if t then 
																																		d:AddOutline(a6)
																																		d:AddNameTag(a6)
																																		end 
																																		end)
																																		end)
																																		
																																		_:NewToggle("Auto Drink Cola","?",function(s)
																																		AutoDrink=s;
																																		autodrink()
																																		end)
																																		
																																		_:NewToggle("No Camera Shake","?",function(s)
																																		w=s
																																		 end)

																																		task.spawn(function()
																																		while task.wait() do
																																			 if w then
																																				  K.PlayerScripts:WaitForChild("CameraShake",1234).Value=CFrame.new(0,0,0)*CFrame.Angles(0,0,0)
																																				  end 
																																				  end 
																																				  end)
																																				  local a8=I:GetAttribute('Tickets')
																																				  local a9=I:GetAttribute('Tokens')
																																				  local I=game.Players.LocalPlayer;
																																				  task.spawn(function()
																																				  while task.wait() do 
																																					  if x then
																																						   if game.Players.LocalPlayer:GetAttribute('InMenu')~=true
																																						    and
																																							 I:GetAttribute('Dead')~=true
																																							  then for N,s in pairs(game:GetService("Workspace").Game.Effects.Tickets:GetChildren()) do
																																								   I.Character.HumanoidRootPart.CFrame=CFrame.new(s:WaitForChild('HumanoidRootPart').Position)
																																								   end
																																								    else task.wait(2)
																																									game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
																																									end;
																																									if I.Character
																																									 and
																																									  I.Character:GetAttribute("Downed")
																																									  then 
																																										  game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
																																										  task.wait(2)
																																										  end 
																																										  end 
																																										  end 
																																										  end)
																																										  
																																										  _:NewButton("FullBright","?",function()
																																										  local aa=Instance.new("PointLight",game.Players.LocalPlayer.Character.HumanoidRootPart)
																																										  aa.Brightness=.3;
																																										  aa.Range=10000;
																																										  E.TimeOfDay="14:00:00"
																																										  E.FogEnd=10000;
																																										  E.Brightness=2;
																																										  E.Ambient=Color3.fromRGB(255,255,255)
																																										  E.FogColor=Color3.fromRGB(255,255,255)
																																										  end)
																																										  
																																										  _:NewSlider("Time Adjustments","?",24,0,function(s)
																																										  game.Lighting.ClockTime=s 
																																										  end)
																																										  
																																										  _:NewButton("View Chat","?",function()
																																										  local ab=true;
																																										  local ac=false;
																																										  local ad=false;
																																										  local ae=true;
																																										  local af={Color=Color3.fromRGB(0,255,255),Font=Enum.Font.SourceSansBold,TextSize=18}
																																										  local ag=game:GetService("StarterGui")
																																										  local H=game:GetService("Players")
																																										  local ah=H.LocalPlayer;
																																										  local ai=game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
																																										  local aj=game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering")
																																										  local ak=(_G.chatSpyInstance or 0)+1;_G.chatSpyInstance=ak;
																																										  local function al(am,an)
																																										  if _G.chatSpyInstance==ak then
																																											   if
																																											    am==ah 
																																												and
																																												 an:lower():sub(1,4)=="/spy"
																																												 then 
																																													 ab=not ab;
																																													 wait(0.3)af.Text="{Succesfully Gained Access To The Chat}"ag:SetCore("ChatMakeSystemMessage",af)
																																													 elseif ab
																																													  and
																																													  (ac==true or am~=ah)
																																													  then
																																														   an=an:gsub("[\n\r]",''):gsub("\t",' '):gsub("[ ]+",' ')
																																														   local ao=true;
																																														   local ap=aj.OnClientEvent:Connect(function(aq,ar)
																																														   if aq.SpeakerUserId==am.UserId
																																														    and
																																															 aq.Message==an:sub(#an-#aq.Message+1)
																																															 and
																																															 (ar=="All"or ar=="Team"
																																															 and
																																															  ad==false 
																																															  and
																																															   H[aq.FromSpeaker].Team==ah.Team)
																																															   then
																																																    ao=false
																																																	 end 
																																																	 end)
																																																	 wait(1)ap:Disconnect()
																																																	 if ao
																																																	  and 
																																																	  ab 
																																																	  then 
																																																		  if ad
																																																		   then ai:FireServer((ae and"/me "or'').."{SPY} ["..am.Name.."]: "..an,"All")
																																																		   else af.Text="{SPY} ["..am.Name.."]: "..an;ag:SetCore("ChatMakeSystemMessage",af)
																																																		   end 
																																																		   end
																																																		    end 
																																																			end 
																																																			end;
																																																			for r,am in ipairs(H:GetPlayers())
																																																			do am.Chatted:Connect(function(an)al(am,an)
																																																			end)
																																																			end;
																																																			H.PlayerAdded:Connect(function(am)
																																																			am.Chatted:Connect(function(an)al(am,an)
																																																			end)
																																																			end)
																																																			af.Text="{SPY "..(ab and"EN"or"DIS").."ABLED}"ag:SetCore("ChatMakeSystemMessage",af)
																																																			local as=ah.PlayerGui.Chat.Frame;
																																																			as.ChatChannelParentFrame.Visible=true;
																																																			as.ChatBarParentFrame.Position=as.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),as.ChatChannelParentFrame.Size.Y)
																																																			end)
																																																			
																																																			_:NewButton("Return To Menu","?",function()
																																																			game:GetService("ReplicatedStorage").Events.ReturnToMenu:FireServer()
																																																			end)
																																																			
																																																			local at;at=hookmetamethod(game,"__namecall",newcclosure(function(self,...)
																																																			local au={...}
																																																			local av=getnamecallmethod()
																																																			if tostring(self)=='Communicator'
																																																			and 
																																																			av=="InvokeServer"
																																																			and 
																																																			au[1]=="update"
																																																				then return 
																																																				Settings.Speed,Settings.Jump 
																																																				end;
																																																				return at(self,...)
																																																				end))
																																																				game:GetService("RunService").RenderStepped:Connect(function()
																																																				pcall(function()
																																																				if game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude>0 
																																																				then 
																																																					game.Players.LocalPlayer.Character:TranslateBy(game.Players.LocalPlayer.Character.Humanoid.MoveDirection*a1/100)
																																																					end 
																																																					end)
																																																					end)
