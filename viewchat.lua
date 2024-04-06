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
