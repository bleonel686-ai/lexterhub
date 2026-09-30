print("[Lexterhub] Script iniciado")
local _0xB0A0 = (function()
local _0x90E6 = false
local _0xC5A9 =""local _0x49CC = { loadstring = loadstring }
local function _0xCF2E()
if loadstring ~= _0x49CC.loadstring then _0x90E6 = true; _0xC5A9 ="loadstring hookeado"; return false end
if type(_G) ~="table"then _0x90E6 = true; _0xC5A9 ="environment corrupto"; return false end
return true
end
if not _0xCF2E() then warn("[LexterLabs] AntiTamper: ".. _0xC5A9) end
task.spawn(function()
while not _0x90E6 do
task.wait(5)
_0xCF2E()
if _0x90E6 then
warn("[LexterLabs] SEGURIDAD: ".. _0xC5A9)
pcall(function()
if _G.LexterLabs_Destroy and type(_G.LexterLabs_Destroy) =="function"then _G.LexterLabs_Destroy() end
end)
break
end
end
end)
return { _0xCF2E = _0xCF2E, isFailed = function() return _0x90E6 end, getReason = function() return _0xC5A9 end }
end)()
if _0xB0A0.isFailed() then return end
local _0x94B5 ="https://keyauth-63b9r6vv.manus.space"local _0x9A27 = _0x94B5 .."/api/validate"local _0xF9B2 ="lexterlabs_key.txt"local _0x1DD6 ="lexterlabs_backup.txt"local _0x9687 = game:GetService("Players")
local _0x0C48 = game:GetService("RunService")
local _0xE9E5 = game:GetService("UserInputService")
local _0xD21A = game:GetService("HttpService")
local _0x669B = game:GetService("TweenService")
local _0x01C6 = game:GetService("SoundService")
local _0xEE2A = game:GetService("Lighting")
local _0x96F4 = game:GetService("ReplicatedStorage")
local _0x58B6 = game:GetService("StarterPack")
local _0x942E = game:GetService("RbxAnalyticsService")
local _0x7281 = _0x9687.LocalPlayer
local _0x395E
if gethui then
local _0x17CE, _0xB18B = pcall(gethui)
if _0x17CE and _0xB18B then _0x395E = _0xB18B end
end
if not _0x395E then pcall(function() _0x395E = game:GetService("CoreGui") end) end
local _0x197C = (syn and syn.request) or (http and http.request) or request or http_request
if not _0x197C then warn("LexterLabs: HTTP no soportado"); return end
local _0x4B3E ="unknown"pcall(function() _0x4B3E = _0x942E:GetClientId() end)
if _0x4B3E =="unknown"or _0x4B3E ==""then _0x4B3E ="fallback_".. tostring(math.random(100000, 999999)) end
local function _0x95CC()
if isfile and isfile(_0xF9B2) then
local _0x17CE, _0x3157 = pcall(readfile, _0xF9B2)
if _0x17CE and _0x3157 and _0x3157 ~=""then return _0x3157:gsub("%s+","") end
end
if isfile and isfile(_0x1DD6) then
local _0x17CE, _0x3157 = pcall(readfile, _0x1DD6)
if _0x17CE and _0x3157 and _0x3157 ~=""then return _0x3157:gsub("%s+","") end
end
if _G.LexterLabs_SavedKey and _G.LexterLabs_SavedKey ~=""then return _G.LexterLabs_SavedKey end
return nil
end
local function _0x78B8(key)
_G.LexterLabs_SavedKey = key
if writefile then
pcall(writefile, _0xF9B2, key)
pcall(writefile, _0x1DD6, key)
end
end
local function _0xFC6E()
_G.LexterLabs_SavedKey = nil
if delfile then
if isfile and isfile(_0xF9B2) then pcall(delfile, _0xF9B2) end
if isfile and isfile(_0x1DD6) then pcall(delfile, _0x1DD6) end
end
end
local function _0x9144(key)
local _0x6C33 = _0x9A27 .."?key=".. _0xD21A:UrlEncode(key) .."&hwid=".. _0xD21A:UrlEncode(_0x4B3E)
local _0x17CE, _0xB9B9 = pcall(function()
return _0x197C({Url = _0x6C33, Method ="GET", Headers = {["Accept"] ="application/json"}})
end)
if not _0x17CE or not _0xB9B9 then return false,"connection_error"end
local _0x286A = _0xB9B9.Body or _0xB9B9.body
if not _0x286A then return false,"empty_response"end
local _0x8712, _0x37F9 = pcall(function() return _0xD21A:JSONDecode(_0x286A) end)
if not _0x8712 or type(_0x37F9) ~="table"then return false,"invalid_json"end
if _0x37F9.valid == true then return true, _0x37F9 end
return false, _0x37F9.reason or"invalid_key"end
local _0x0D83
local function _0xA7C1()
local _0xEAF3 = _0x95CC()
local _0x3E1B = Instance.new("ScreenGui")
_0x3E1B.Name ="LexterLabsLoader"_0x3E1B.ResetOnSpawn = false
_0x3E1B.IgnoreGuiInset = true
_0x3E1B.DisplayOrder = 999
_0x3E1B.Parent = _0x395E
local _0x46A6 = Instance.new("Frame")
_0x46A6.Size = UDim2.new(1, 0, 1, 0)
_0x46A6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_0x46A6.BackgroundTransparency = 0.45
_0x46A6.BorderSizePixel = 0
_0x46A6.Parent = _0x3E1B
local _0x2BD3 = Instance.new("Frame")
_0x2BD3.Size = UDim2.new(0, 480, 0, 460)
_0x2BD3.Position = UDim2.new(0.5, -240, 0.5, -230)
_0x2BD3.BackgroundColor3 = Color3.fromRGB(10, 8, 20)
_0x2BD3.BorderSizePixel = 0
_0x2BD3.Active = true
_0x2BD3.Draggable = true
_0x2BD3.Parent = _0x3E1B
Instance.new("UICorner", _0x2BD3).CornerRadius = UDim.new(0, 18)
local _0xCAE3 = Instance.new("UIGradient", _0x2BD3)
_0xCAE3.Color = ColorSequence.new({
ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 18, 50)),
ColorSequenceKeypoint.new(0.5, Color3.fromRGB(14, 10, 26)),
ColorSequenceKeypoint.new(1, Color3.fromRGB(6, 4, 14))
})
_0xCAE3.Rotation = 135
local _0xE6D8 = Instance.new("UIStroke", _0x2BD3)
_0xE6D8.Color = Color3.fromRGB(168, 85, 247)
_0xE6D8.Thickness = 2
_0xE6D8.Transparency = 0.15
local _0x98E4 = Instance.new("UIStroke", _0x2BD3)
_0x98E4.Color = Color3.fromRGB(255, 200, 60)
_0x98E4.Thickness = 1
_0x98E4.Transparency = 0.6
local _0x027A = Instance.new("Frame", _0x2BD3)
_0x027A.Size = UDim2.new(1, 0, 0, 3)
_0x027A.BackgroundColor3 = Color3.fromRGB(168, 85, 247)
_0x027A.BorderSizePixel = 0
_0x027A.Parent = _0x2BD3
Instance.new("UICorner", _0x027A).CornerRadius = UDim.new(0, 3)
local _0xB606 = Instance.new("UIGradient", _0x027A)
_0xB606.Color = ColorSequence.new({
ColorSequenceKeypoint.new(0, Color3.fromRGB(168, 85, 247)),
ColorSequenceKeypoint.new(0.5, Color3.fromRGB(212, 175, 55)),
ColorSequenceKeypoint.new(1, Color3.fromRGB(168, 85, 247))
})
local _0x96C3 = Instance.new("TextLabel", _0x2BD3)
_0x96C3.Size = UDim2.new(1, 0, 0, 34)
_0x96C3.Position = UDim2.new(0, 0, 0, 22)
_0x96C3.BackgroundTransparency = 1
_0x96C3.Font = Enum.Font.GothamBlack
_0x96C3.TextSize = 28
_0x96C3.TextColor3 = Color3.fromRGB(255, 255, 255)
_0x96C3.Text ="LEXTERLABS"_0x96C3.Parent = _0x2BD3
local _0x0004 = Instance.new("UIGradient", _0x96C3)
_0x0004.Color = ColorSequence.new({
ColorSequenceKeypoint.new(0, Color3.fromRGB(168, 85, 247)),
ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)),
ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 215, 0))
})
local _0x16CD = Instance.new("TextLabel", _0x2BD3)
_0x16CD.Size = UDim2.new(1, 0, 0, 20)
_0x16CD.Position = UDim2.new(0, 0, 0, 60)
_0x16CD.BackgroundTransparency = 1
_0x16CD.Font = Enum.Font.GothamMedium
_0x16CD.TextSize = 11
_0x16CD.TextColor3 = Color3.fromRGB(160, 145, 190)
_0x16CD.Text ="-- SISTEMA DE AUTENTICACION --"_0x16CD.Parent = _0x2BD3
local _0x6DAB = Instance.new("Frame", _0x2BD3)
_0x6DAB.Size = UDim2.new(0, 140, 0, 1)
_0x6DAB.Position = UDim2.new(0.5, -70, 0, 88)
_0x6DAB.BackgroundColor3 = Color3.fromRGB(168, 85, 247)
_0x6DAB.BorderSizePixel = 0
_0x6DAB.BackgroundTransparency = 0.4
_0x6DAB.Parent = _0x2BD3
local _0xD960 = Instance.new("TextLabel", _0x2BD3)
_0xD960.Size = UDim2.new(1, -60, 0, 18)
_0xD960.Position = UDim2.new(0, 30, 0, 108)
_0xD960.BackgroundTransparency = 1
_0xD960.Font = Enum.Font.GothamBold
_0xD960.TextSize = 11
_0xD960.TextColor3 = Color3.fromRGB(212, 175, 55)
_0xD960.Text ="ACCESS KEY"_0xD960.TextXAlignment = Enum.TextXAlignment.Left
_0xD960.Parent = _0x2BD3
local _0x6978 = Instance.new("Frame", _0x2BD3)
_0x6978.Size = UDim2.new(1, -60, 0, 48)
_0x6978.Position = UDim2.new(0, 30, 0, 130)
_0x6978.BackgroundColor3 = Color3.fromRGB(18, 14, 30)
_0x6978.BorderSizePixel = 0
_0x6978.Parent = _0x2BD3
Instance.new("UICorner", _0x6978).CornerRadius = UDim.new(0, 10)
local _0xA296 = Instance.new("UIStroke", _0x6978)
_0xA296.Color = Color3.fromRGB(80, 60, 120)
_0xA296.Thickness = 1
_0xA296.Transparency = 0.3
local _0xA9FD = Instance.new("TextBox", _0x6978)
_0xA9FD.Size = UDim2.new(1, -80, 1, 0)
_0xA9FD.Position = UDim2.new(0, 14, 0, 0)
_0xA9FD.BackgroundTransparency = 1
_0xA9FD.Font = Enum.Font.Code
_0xA9FD.TextSize = 13
_0xA9FD.TextColor3 = Color3.fromRGB(240, 240, 240)
_0xA9FD.PlaceholderText ="Pega tu key aqui..."_0xA9FD.PlaceholderColor3 = Color3.fromRGB(90, 80, 120)
_0xA9FD.Text = _0xEAF3 or""_0xA9FD.ClearTextOnFocus = false
_0xA9FD.TextXAlignment = Enum.TextXAlignment.Left
_0xA9FD.Parent = _0x6978
local _0x10B4 = Instance.new("TextLabel", _0x6978)
_0x10B4.Size = UDim2.new(0, 50, 1, 0)
_0x10B4.Position = UDim2.new(1, -55, 0, 0)
_0x10B4.BackgroundTransparency = 1
_0x10B4.Font = Enum.Font.Code
_0x10B4.TextSize = 11
_0x10B4.TextColor3 = Color3.fromRGB(110, 100, 140)
_0x10B4.Text = #_0xA9FD.Text .."/32"_0x10B4.TextXAlignment = Enum.TextXAlignment.Right
_0x10B4.Parent = _0x6978
_0xA9FD:GetPropertyChangedSignal("Text"):Connect(function()
local _0x93C9 = #_0xA9FD.Text
_0x10B4.Text = _0x93C9 .."/32"if _0x93C9 >= 32 then
_0x10B4.TextColor3 = Color3.fromRGB(80, 255, 130)
_0xA296.Color = Color3.fromRGB(80, 255, 130)
_0xA296.Transparency = 0
else
_0x10B4.TextColor3 = Color3.fromRGB(110, 100, 140)
_0xA296.Color = Color3.fromRGB(80, 60, 120)
_0xA296.Transparency = 0.3
end
end)
local function _0x34CB(y, h, txt, c1, c2, txtColor)
local _0x96B0 = Instance.new("TextButton", _0x2BD3)
_0x96B0.Size = UDim2.new(1, -60, 0, h)
_0x96B0.Position = UDim2.new(0, 30, 0, y)
_0x96B0.BackgroundColor3 = c1
_0x96B0.BorderSizePixel = 0
_0x96B0.Font = Enum.Font.GothamBold
_0x96B0.TextSize = 13
_0x96B0.TextColor3 = txtColor or Color3.fromRGB(255,255,255)
_0x96B0.Text = txt
_0x96B0.AutoButtonColor = false
_0x96B0.ClipsDescendants = true
Instance.new("UICorner", _0x96B0).CornerRadius = UDim.new(0, 10)
local _0xFE35 = Instance.new("UIGradient", _0x96B0)
_0xFE35.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, c1), ColorSequenceKeypoint.new(1, c2) })
_0xFE35.Rotation = 45
local _0x7384 = Instance.new("UIStroke", _0x96B0)
_0x7384.Color = c2
_0x7384.Thickness = 1.5
_0x7384.Transparency = 0.4
return _0x96B0
end
local _0x5972 = _0x34CB(192, 46,"VALIDAR Y GUARDAR", Color3.fromRGB(168, 85, 247), Color3.fromRGB(110, 50, 190))
local _0x68F4
if _0xEAF3 and _0xEAF3 ~=""then
_0x68F4 = _0x34CB(248, 40,"USAR KEY GUARDADA", Color3.fromRGB(60, 140, 220), Color3.fromRGB(30, 80, 150))
end
local _0x535A = _0x34CB((_0xEAF3 and _0xEAF3 ~="") and 296 or 248, 40,"SACAR KEY", Color3.fromRGB(220, 180, 40), Color3.fromRGB(150, 110, 10), Color3.fromRGB(40, 25, 0))
local _0x7026 = Instance.new("Frame", _0x2BD3)
_0x7026.Size = UDim2.new(1, -60, 0, 4)
_0x7026.Position = UDim2.new(0, 30, 0, 344)
_0x7026.BackgroundColor3 = Color3.fromRGB(40, 30, 60)
_0x7026.BorderSizePixel = 0
_0x7026.BackgroundTransparency = 1
_0x7026.Parent = _0x2BD3
Instance.new("UICorner", _0x7026).CornerRadius = UDim.new(1, 0)
local _0x5AED = Instance.new("Frame", _0x7026)
_0x5AED.Size = UDim2.new(0, 0, 1, 0)
_0x5AED.BackgroundColor3 = Color3.fromRGB(168, 85, 247)
_0x5AED.BorderSizePixel = 0
_0x5AED.Parent = _0x7026
Instance.new("UICorner", _0x5AED).CornerRadius = UDim.new(1, 0)
local _0x2EF3 = Instance.new("UIGradient", _0x5AED)
_0x2EF3.Color = ColorSequence.new({
ColorSequenceKeypoint.new(0, Color3.fromRGB(168, 85, 247)),
ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 200, 60))
})
local _0xBE8D = Instance.new("TextLabel", _0x2BD3)
_0xBE8D.Size = UDim2.new(1, -60, 0, 30)
_0xBE8D.Position = UDim2.new(0, 30, 1, -42)
_0xBE8D.BackgroundTransparency = 1
_0xBE8D.Font = Enum.Font.GothamMedium
_0xBE8D.TextSize = 11
_0xBE8D.TextColor3 = Color3.fromRGB(150, 145, 170)
_0xBE8D.Text = (_0xEAF3 and _0xEAF3 ~="") and"Key guardada lista"or"Esperando key..."_0xBE8D.TextWrapped = true
_0xBE8D.Parent = _0x2BD3
local function _0x75D8()
local _0x2259 = _0x2BD3.Position
task.spawn(function()
for _0x84BC = 1, 5 do
_0x2BD3.Position = UDim2.new(_0x2259.X.Scale, _0x2259.X.Offset + math.random(-6, 6), _0x2259.Y.Scale, _0x2259.Y.Offset + math.random(-6, 6))
task.wait(0.03)
end
_0x2BD3.Position = _0x2259
end)
end
local _0x5FA4 = false
local function _0x8E8E(keyToTry, fromSaved)
if _0x5FA4 then return end
if keyToTry ==""then
_0xBE8D.Text ="✕ Introduce una key"_0xBE8D.TextColor3 = Color3.fromRGB(255, 90, 90)
_0x75D8()
return
end
_0x5FA4 = true
_0x5972.Text ="VALIDANDO..."_0xBE8D.Text ="Conectando con el servidor..."_0xBE8D.TextColor3 = Color3.fromRGB(255, 200, 0)
_0x7026.BackgroundTransparency = 0
_0x5AED.Size = UDim2.new(0, 0, 1, 0)
_0x5AED.BackgroundColor3 = Color3.fromRGB(168, 85, 247)
_0x669B:Create(_0x5AED, TweenInfo.new(1.2, Enum.EasingStyle.Quad), {Size = UDim2.new(0.7, 0, 1, 0)}):Play()
task.spawn(function()
local _0x61ED, _0x37F9 = _0x9144(keyToTry)
_0x5AED.Size = UDim2.new(1, 0, 1, 0)
task.wait(0.3)
if _0x61ED then
_0x78B8(keyToTry)
_G.LexterLabs_KeyData = _0x37F9
_0xBE8D.Text ="✓ Key valida - Cargando Hub..."_0xBE8D.TextColor3 = Color3.fromRGB(80, 255, 130)
_0x5972.Text ="ACCESO CONCEDIDO"_0x5972.BackgroundColor3 = Color3.fromRGB(60, 200, 80)
_G.LexterLabs_Key = keyToTry
_G.LexterLabs_HWID = _0x4B3E
task.wait(0.8)
_0x3E1B:Destroy()
_0x0D83()
else
if not fromSaved then _0xFC6E() end
local _0x5694 = {
not_found="✕ Key no encontrada", expired="✕ Key expirada", banned="✕ Key baneada",
hwid_mismatch="✕ Key en uso por otro dispositivo", rate_limited="✕ Espera un momento",
connection_error="✕ No se pudo conectar", invalid_request="✕ Solicitud invalida",
invalid_json="✕ Respuesta invalida", empty_response="✕ Servidor no respondio"}
_0xBE8D.Text = _0x5694[_0x37F9] or ("✕ ".. tostring(_0x37F9))
_0xBE8D.TextColor3 = Color3.fromRGB(255, 90, 90)
_0x5972.Text ="VALIDAR Y GUARDAR"_0x5AED.BackgroundColor3 = Color3.fromRGB(255, 90, 90)
_0x75D8()
task.wait(1.2)
_0x7026.BackgroundTransparency = 1
_0x5AED.Size = UDim2.new(0, 0, 1, 0)
_0x5FA4 = false
end
end)
end
_0x5972.MouseButton1Click:Connect(function() _0x8E8E(_0xA9FD.Text:gsub("%s+",""), false) end)
if _0x68F4 then
_0x68F4.MouseButton1Click:Connect(function()
_0xA9FD.Text = _0xEAF3
_0xBE8D.Text ="Usando key guardada..."_0xBE8D.TextColor3 = Color3.fromRGB(255, 200, 0)
_0x8E8E(_0xEAF3, true)
end)
end
_0x535A.MouseButton1Click:Connect(function()
local _0x6C33 = _0x94B5 .."/#passes"if setclipboard then pcall(setclipboard, _0x6C33) end
local _0x4B55 = (syn and syn.open_url) or open_url
if _0x4B55 then pcall(_0x4B55, _0x6C33) end
_0xBE8D.Text ="Enlace copiado al portapapeles"_0xBE8D.TextColor3 = Color3.fromRGB(100, 200, 255)
end)
_0xA9FD.FocusLost:Connect(function(enterPressed) if enterPressed then _0x5972.MouseButton1Click:Fire() end end)
end
function _0x0D83()
print("[LexterLabs] startHub iniciado")
local _0x24F4 = nil
local _0xD194 = false
local _0x7B09 = nil
local _0x1767 = 0
local _0x8EFC = false
local _0x927C = 0
local _0x0D17 = false
local _0x590A = nil
local _0x4E0F = nil
local _0xF864 = 0
local _0xBA5E = 0
local _0x87CE ="Head"local _0xE2BD = 0
local _0xFF8D = {}
local _0x6D6C = false
local _0xCEEA = 0
local _0x42E1 = 0
local _0x1D95 = nil
local _0xC997 = -2.2
local _0x7BB1 = -3.5
local function _0xD192() return workspace.CurrentCamera end
local _0xF1C3 = nil
local _0xFFF7 = nil
pcall(function()
_0xF1C3 = _0x7281.CameraMaxZoomDistance
_0xFFF7 = _0x7281.CameraMinZoomDistance
end)
local _0x118C = false
do
local _0x17CE, _0x0AE2 = pcall(function() return Drawing.new("Line") end)
if _0x17CE and _0x0AE2 then _0x118C = true; pcall(function() _0x0AE2:Remove() end) end
end
pcall(function()
for _, n in ipairs({"FOVCircleGUI","FriendListGUI","LexterProfile","LexterSpectate","LexterSpecList","LexterWelcome"}) do
if _0x395E:FindFirstChild(n) then _0x395E[n]:Destroy() end
end
end)
local _0xBB1D = {}
local function _0x4841(signal, func)
local _0xF3EE = signal:Connect(func)
table.insert(_0xBB1D, _0xF3EE)
return _0xF3EE
end
local _0x7681 = {
AimbotEnabled=false, ShowFOV=true, Chams=false, NameESP=false,
HealthBar=false, Skeleton=false, Box=false, InventoryViewer=false,
InvChams=false, WeaponWarnings=false, SoundAlerts=false,
SpectateEnabled=false, AimbotRotationEnabled=false,
}
local _0x9BAD = {
AimRadius=50, MaxDistance=200, Smoothness=100, LockDuration=0.5,
AimOffsetY=0,
ESPDistance=5000, SkeletonSmoothness=0.7, InvDistance=5000,
SpectateFOV=70, AimbotRotationShots=4, AimbotFireRate=10,
}
local _0x146B ="Head"local _0x4F4B, _0x3D60, _0xB570, _0xC5FA, _0x6F5E = {}, {}, {}, {}, {}
local _0x7CE3, _0x1D9B, _0x70FF = {}, {}, {}
local _0x195D = {}
local _0xAE08 = {}
local _0x0A5E ="LexterLabsHub_Config.json"local _0x4809 = {
active = false, target = nil, targetIndex = 0,
originalCamType = nil, originalFOV = nil, originalCamMode = nil, token = 0,
_0x1587 = nil, listGUI = nil, autoNext = true, showFriends = true,
}
local _0xD704 = {["Common"]=Color3.fromRGB(140,140,140),["Uncommon"]=Color3.fromRGB(60,200,60),["Rare"]=Color3.fromRGB(50,120,255),["Epic"]=Color3.fromRGB(180,80,255),["Legendary"]=Color3.fromRGB(255,165,20),["Mythic"]=Color3.fromRGB(255,0,0),["Omega"]=Color3.fromRGB(200,0,0),["Unknown"]=Color3.fromRGB(180,180,180)}
local _0x258A = {["Omega"]=Color3.fromRGB(200,0,0),["Mythic"]=Color3.fromRGB(255,0,0),["Legendary"]=Color3.fromRGB(255,165,20),["Epic"]=Color3.fromRGB(180,0,255),["Rare"]=Color3.fromRGB(0,80,255),["Uncommon"]=Color3.fromRGB(0,180,0),["Common"]=Color3.fromRGB(100,100,100),["Unknown"]=Color3.fromRGB(120,120,120)}
local _0x7B04 = {["Omega"]=0,["Mythic"]=1,["Legendary"]=2,["Epic"]=3,["Rare"]=4,["Uncommon"]=5,["Common"]=6,["Unknown"]=7}
local _0xCCF7 = {
Attachment=true, VectorForce=true, BodyVelocity=true, BodyGyro=true,
Weld=true, Motor6D=true, Sound=true, PointLight=true, SpotLight=true,
WeldConstraint=true, ManualWeld=true, Snap=true, Rotate=true, Motor=true,
HingeConstraint=true, AlignPosition=true, AlignOrientation=true,
}local function _0x5513(_0x4E38)
if not _0x4E38 or not _0x4E38:IsA("Tool") then return false end
if _0x4E38.Name =="Fists"then return true end
if not tonumber(_0x4E38.Name) then return false end
local _0xDBE4 = _0x4E38:FindFirstChild("Handle")
if not _0xDBE4 then return true end
local _0x540A = 0
for _, _0x9102 in ipairs(_0xDBE4:GetChildren()) do
if not _0xCCF7[_0x9102.ClassName] then
_0x540A = _0x540A + 1
end
end
return _0x540A == 0
end
local function _0x571D(userId)
if _0x4F4B[userId] then pcall(function() _0x4F4B[userId]:Destroy() end) _0x4F4B[userId] = nil end
if _0x3D60[userId] then
for _, _0x0AE2 in pairs(_0x3D60[userId].lines) do if _0x0AE2 then pcall(function() _0x0AE2:Remove() end) end end
_0x3D60[userId] = nil
end
if _0xB570[userId] then
for _, _0x0AE2 in pairs(_0xB570[userId].lines) do if _0x0AE2 then pcall(function() _0x0AE2:Remove() end) end end
_0xB570[userId] = nil
end
if _0xC5FA[userId] then pcall(function() _0xC5FA[userId]:Destroy() end) _0xC5FA[userId] = nil end
if _0x6F5E[userId] then pcall(function() _0x6F5E[userId].gui:Destroy() end) _0x6F5E[userId] = nil end
end
local _0xDA87 = {}
local function _0x899E()
local _0x4D3A = {}
pcall(function()
local _0x2D5D = _0x7281:GetFriendsOnline()
if _0x2D5D then for _, _0x6DBC in ipairs(_0x2D5D) do _0x4D3A[_0x6DBC.VisitorId] = true end end
end)
pcall(function()
for _, plr in ipairs(_0x9687:GetPlayers()) do
if plr ~= _0x7281 and plr:IsFriendsWith(_0x7281.UserId) then _0x4D3A[plr.UserId] = true end
end
end)
_0xDA87 = _0x4D3A
end
_0x899E()
local function _0x132B(plr) return plr and _0xDA87[plr.UserId] == true end
local function _0xC5A6(player)
if player == _0x7281 then return false end
if _0x132B(player) and _0x195D[player.UserId] ~= true then return false end
if _0x195D[player.UserId] == false then return false end
return true
end
local function _0x8D0C(plr, isVisible)
_0x195D[plr.UserId] = isVisible
if _0x4F4B[plr.UserId] then _0x4F4B[plr.UserId].Enabled = isVisible end
if _0xC5FA[plr.UserId] then _0xC5FA[plr.UserId].Enabled = isVisible end
if _0x6F5E[plr.UserId] and _0x6F5E[plr.UserId].gui then _0x6F5E[plr.UserId].gui.Enabled = isVisible end
end
local _0xE759 = {}
local function _0x664D()
for _0x84BC, _0x6074 in ipairs(_0xE759) do
local _0x2BD3 = _0x6074:FindFirstChild("Frame")
if _0x2BD3 then
_0x669B:Create(_0x2BD3, TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
Position = UDim2.new(1, -380, 0, 16 + ((_0x84BC-1) * 98))
}):Play()
end
end
end
local function _0x55F2(_0x96C3, message, duration, _0x7E7C, _0xFD8D)
task.spawn(function()
if #_0xE759 >= 4 then return end
local _0xD63A = _0xFD8D or Color3.fromRGB(140, 90, 220)
local _0x6074 = Instance.new("ScreenGui")
_0x6074.Name ="LexterNotif"_0x6074.ResetOnSpawn = false
_0x6074.IgnoreGuiInset = true
_0x6074.DisplayOrder = 990
_0x6074.Parent = _0x395E
local _0x2BD3 = Instance.new("Frame")
_0x2BD3.Size = UDim2.new(0, 370, 0, 88)
_0x2BD3.Position = UDim2.new(1, 420, 0, 16 + (#_0xE759 * 98))
_0x2BD3.BackgroundColor3 = Color3.fromRGB(13, 11, 24)
_0x2BD3.BackgroundTransparency = 0.05
_0x2BD3.BorderSizePixel = 0
_0x2BD3.ClipsDescendants = false
_0x2BD3.Parent = _0x6074
Instance.new("UICorner", _0x2BD3).CornerRadius = UDim.new(0, 16)
local _0xE08B = Instance.new("UIGradient", _0x2BD3)
_0xE08B.Color = ColorSequence.new({
ColorSequenceKeypoint.new(0, Color3.fromRGB(28, 20, 46)),
ColorSequenceKeypoint.new(0.5, Color3.fromRGB(16, 12, 28)),
ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 8, 18))
})
_0xE08B.Rotation = 120
local _0xE184 = Instance.new("UIStroke", _0x2BD3)
_0xE184.Color = _0xD63A
_0xE184.Thickness = 2.2
_0xE184.Transparency = 0.05
local _0xFF47 = Instance.new("Frame", _0x2BD3)
_0xFF47.Size = UDim2.new(1, 8, 1, 8)
_0xFF47.Position = UDim2.new(0, -4, 0, -4)
_0xFF47.BackgroundColor3 = _0xD63A
_0xFF47.BackgroundTransparency = 0.88
_0xFF47.BorderSizePixel = 0
_0xFF47.ZIndex = -1
Instance.new("UICorner", _0xFF47).CornerRadius = UDim.new(0, 20)
local _0x9C8D = Instance.new("Frame", _0x2BD3)
_0x9C8D.Size = UDim2.new(0, 6, 1, -20)
_0x9C8D.Position = UDim2.new(0, 7, 0, 10)
_0x9C8D.BackgroundColor3 = _0xD63A
_0x9C8D.BorderSizePixel = 0
_0x9C8D.Parent = _0x2BD3
Instance.new("UICorner", _0x9C8D).CornerRadius = UDim.new(1, 0)
local _0xA968 = Instance.new("Frame", _0x2BD3)
_0xA968.Size = UDim2.new(0, 56, 0, 56)
_0xA968.Position = UDim2.new(0, 22, 0.5, -28)
_0xA968.BackgroundColor3 = _0xD63A
_0xA968.BorderSizePixel = 0
_0xA968.ZIndex = 2
_0xA968.Parent = _0x2BD3
Instance.new("UICorner", _0xA968).CornerRadius = UDim.new(0, 14)
local _0x4231 = Instance.new("UIGradient", _0xA968)
_0x4231.Color = ColorSequence.new({
ColorSequenceKeypoint.new(0, _0xD63A),
ColorSequenceKeypoint.new(1, Color3.new(math.max(0, _0xD63A.R * 0.5), math.max(0, _0xD63A.G * 0.5), math.max(0, _0xD63A.B * 0.5)))
})
_0x4231.Rotation = 135
local _0xAE33 = Instance.new("UIStroke", _0xA968)
_0xAE33.Color = Color3.fromRGB(255, 255, 255)
_0xAE33.Thickness = 1.5
_0xAE33.Transparency = 0.65
local _0x8881 = Instance.new("TextLabel", _0xA968)
_0x8881.Size = UDim2.new(1, 0, 1, 0)
_0x8881.BackgroundTransparency = 1
_0x8881.Font = Enum.Font.GothamBlack
_0x8881.TextSize = 26
_0x8881.TextColor3 = Color3.fromRGB(255, 255, 255)
_0x8881.Text = _0x7E7C or"!"_0x8881.ZIndex = 3
_0x8881.Parent = _0xA968
local _0xCB5A = Instance.new("TextLabel", _0x2BD3)
_0xCB5A.Size = UDim2.new(1, -110, 0, 22)
_0xCB5A.Position = UDim2.new(0, 90, 0, 14)
_0xCB5A.BackgroundTransparency = 1
_0xCB5A.Font = Enum.Font.GothamBlack
_0xCB5A.TextSize = 15
_0xCB5A.TextColor3 = Color3.fromRGB(255, 255, 255)
_0xCB5A.Text = _0x96C3
_0xCB5A.TextXAlignment = Enum.TextXAlignment.Left
_0xCB5A.ZIndex = 2
_0xCB5A.Parent = _0x2BD3
local _0x21BF = Instance.new("Frame", _0x2BD3)
_0x21BF.Size = UDim2.new(0, 0, 0, 2)
_0x21BF.Position = UDim2.new(0, 90, 0, 38)
_0x21BF.BackgroundColor3 = _0xD63A
_0x21BF.BorderSizePixel = 0
_0x21BF.ZIndex = 2
_0x21BF.Parent = _0x2BD3
Instance.new("UICorner", _0x21BF).CornerRadius = UDim.new(1, 0)
local _0x1EA3 = Instance.new("TextLabel", _0x2BD3)
_0x1EA3.Size = UDim2.new(1, -110, 0, 32)
_0x1EA3.Position = UDim2.new(0, 90, 0, 44)
_0x1EA3.BackgroundTransparency = 1
_0x1EA3.Font = Enum.Font.GothamMedium
_0x1EA3.TextSize = 12
_0x1EA3.TextColor3 = Color3.fromRGB(210, 205, 230)
_0x1EA3.Text = message
_0x1EA3.TextWrapped = true
_0x1EA3.TextXAlignment = Enum.TextXAlignment.Left
_0x1EA3.TextYAlignment = Enum.TextYAlignment.Top
_0x1EA3.ZIndex = 2
_0x1EA3.Parent = _0x2BD3
local _0x4E34 = Instance.new("Frame", _0x2BD3)
_0x4E34.Size = UDim2.new(1, -24, 0, 3)
_0x4E34.Position = UDim2.new(0, 12, 1, -9)
_0x4E34.BackgroundColor3 = Color3.fromRGB(40, 30, 60)
_0x4E34.BorderSizePixel = 0
_0x4E34.ZIndex = 2
_0x4E34.Parent = _0x2BD3
Instance.new("UICorner", _0x4E34).CornerRadius = UDim.new(1, 0)
local _0xBDA3 = Instance.new("Frame", _0x4E34)
_0xBDA3.Size = UDim2.new(1, 0, 1, 0)
_0xBDA3.BackgroundColor3 = _0xD63A
_0xBDA3.BorderSizePixel = 0
_0xBDA3.Parent = _0x4E34
Instance.new("UICorner", _0xBDA3).CornerRadius = UDim.new(1, 0)
local _0x2EF3 = Instance.new("UIGradient", _0xBDA3)
_0x2EF3.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, _0xD63A), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255)) })
table.insert(_0xE759, _0x6074)
_0x664D()
_0xA968.Size = UDim2.new(0, 0, 0, 0)
_0xA968.Position = UDim2.new(0, 50, 0.5, 0)
_0x669B:Create(_0xA968, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
Size = UDim2.new(0, 56, 0, 56), Position = UDim2.new(0, 22, 0.5, -28)
}):Play()
_0x669B:Create(_0x21BF, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
Size = UDim2.new(0, 80, 0, 2)
}):Play()
local _0xB583 = Instance.new("Frame", _0x2BD3)
_0xB583.Size = UDim2.new(1, 0, 1, 0)
_0xB583.BackgroundColor3 = _0xD63A
_0xB583.BackgroundTransparency = 0.55
_0xB583.BorderSizePixel = 0
_0xB583.ZIndex = 10
_0xB583.Parent = _0x2BD3
Instance.new("UICorner", _0xB583).CornerRadius = UDim.new(0, 16)
_0x669B:Create(_0xB583, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), { BackgroundTransparency = 1 }):Play()
task.delay(0.6, function() if _0xB583 and _0xB583.Parent then _0xB583:Destroy() end end)
task.spawn(function()
for _ = 1, 2 do
if not _0xE184.Parent then break end
_0x669B:Create(_0xE184, TweenInfo.new(0.5), {Transparency = 0.4, Thickness = 3}):Play()
task.wait(0.5)
if not _0xE184.Parent then break end
_0x669B:Create(_0xE184, TweenInfo.new(0.5), {Transparency = 0.05, Thickness = 2.2}):Play()
task.wait(0.5)
end
end)
local _0xACA5 = duration or 3.5
_0x669B:Create(_0xBDA3, TweenInfo.new(_0xACA5, Enum.EasingStyle.Linear, Enum.EasingDirection.In), { Size = UDim2.new(0, 0, 1, 0) }):Play()
task.wait(_0xACA5)
_0x669B:Create(_0x2BD3, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
Position = UDim2.new(1, 420, 0, _0x2BD3.Position.Y.Offset)
}):Play()
task.wait(0.35)
_0x6074:Destroy()
for _0x84BC, n in ipairs(_0xE759) do
if n == _0x6074 then table.remove(_0xE759, _0x84BC); break end
end
_0x664D()
end)
end
local function _0x6B0E()
task.spawn(function()
pcall(function()
local _0xEA79 = Instance.new("Sound")
_0xEA79.SoundId ="rbxassetid://140419294351439"_0xEA79.Volume = 2.8
_0xEA79.RollOffMode = Enum.RollOffMode.Inverse
_0xEA79.RollOffMinDistance = 500
_0xEA79.RollOffMaxDistance = 5000
_0xEA79.Parent = _0x01C6
_0xEA79:Play()
task.delay(7, function() pcall(function() _0xEA79:Destroy() end) end)
end)
end)
end
local function _0x197B()
task.spawn(function()
local _0x3F08 = Instance.new("ScreenGui")
_0x3F08.Name ="LexterWelcome"_0x3F08.ResetOnSpawn = false
_0x3F08.IgnoreGuiInset = true
_0x3F08.DisplayOrder = 999
_0x3F08.Parent = _0x395E
local _0xA9B4 = Instance.new("Frame", _0x3F08)
_0xA9B4.Size = UDim2.new(0, 440, 0, 140)
_0xA9B4.Position = UDim2.new(1, 520, 0, 30)
_0xA9B4.BackgroundColor3 = Color3.fromRGB(13, 10, 24)
_0xA9B4.BorderSizePixel = 0
_0xA9B4.ClipsDescendants = true
Instance.new("UICorner", _0xA9B4).CornerRadius = UDim.new(0, 20)
local _0x19D7 = Instance.new("UIGradient", _0xA9B4)
_0x19D7.Color = ColorSequence.new({
ColorSequenceKeypoint.new(0, Color3.fromRGB(52, 28, 84)),
ColorSequenceKeypoint.new(0.5, Color3.fromRGB(26, 15, 48)),
ColorSequenceKeypoint.new(1, Color3.fromRGB(13, 10, 24))
})
_0x19D7.Rotation = 135
local _0xE6D8 = Instance.new("UIStroke", _0xA9B4)
_0xE6D8.Color = Color3.fromRGB(168, 85, 247)
_0xE6D8.Thickness = 2.5
_0xE6D8.Transparency = 0
local _0x98E4 = Instance.new("UIStroke", _0xA9B4)
_0x98E4.Color = Color3.fromRGB(255, 200, 60)
_0x98E4.Thickness = 1.2
_0x98E4.Transparency = 0.35
local _0x6D2E = Instance.new("Frame", _0xA9B4)
_0x6D2E.Size = UDim2.new(0, 5, 1, -30)
_0x6D2E.Position = UDim2.new(0, 12, 0, 15)
_0x6D2E.BackgroundColor3 = Color3.fromRGB(168, 85, 247)
_0x6D2E.BorderSizePixel = 0
Instance.new("UICorner", _0x6D2E).CornerRadius = UDim.new(1, 0)
local _0xBAA0 = Instance.new("UIGradient", _0x6D2E)
_0xBAA0.Color = ColorSequence.new({
ColorSequenceKeypoint.new(0, Color3.fromRGB(168, 85, 247)),
ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 215, 0)),
ColorSequenceKeypoint.new(1, Color3.fromRGB(168, 85, 247))
})
_0xBAA0.Rotation = 90
local _0x855F = Instance.new("Frame", _0xA9B4)
_0x855F.Size = UDim2.new(0, 88, 0, 88)
_0x855F.Position = UDim2.new(0, 32, 0.5, -44)
_0x855F.BackgroundColor3 = Color3.fromRGB(42, 26, 68)
_0x855F.BorderSizePixel = 0
Instance.new("UICorner", _0x855F).CornerRadius = UDim.new(1, 0)
local _0xF4C4 = Instance.new("UIStroke", _0x855F)
_0xF4C4.Color = Color3.fromRGB(255, 200, 60)
_0xF4C4.Thickness = 3
_0xF4C4.Transparency = 0
local _0x1E34 = Instance.new("ImageLabel", _0x855F)
_0x1E34.Size = UDim2.new(1, -8, 1, -8)
_0x1E34.Position = UDim2.new(0, 4, 0, 4)
_0x1E34.BackgroundTransparency = 1
_0x1E34.Image =""Instance.new("UICorner", _0x1E34).CornerRadius = UDim.new(1, 0)
local _0x7869 = Instance.new("TextLabel", _0x855F)
_0x7869.Size = UDim2.new(1, 0, 1, 0)
_0x7869.BackgroundTransparency = 1
_0x7869.Font = Enum.Font.GothamBlack
_0x7869.TextSize = 34
_0x7869.TextColor3 = Color3.fromRGB(255, 255, 255)
_0x7869.Text = string.upper(string.sub(_0x7281.Name, 1, 1))
task.spawn(function()
local _0x17CE, _0x6C33 = pcall(function()
return _0x9687:GetUserThumbnailAsync(_0x7281.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)
end)
if _0x17CE and _0x6C33 and _0x1E34.Parent then
_0x1E34.Image = _0x6C33
_0x1E34.ZIndex = 2
task.wait(0.1)
if _0x1E34.IsLoaded then _0x7869.Visible = false end
end
end)
local _0x19FD = Instance.new("TextLabel", _0xA9B4)
_0x19FD.Size = UDim2.new(1, -150, 0, 18)
_0x19FD.Position = UDim2.new(0, 136, 0, 26)
_0x19FD.BackgroundTransparency = 1
_0x19FD.Font = Enum.Font.GothamBold
_0x19FD.TextSize = 12
_0x19FD.TextColor3 = Color3.fromRGB(200, 180, 230)
_0x19FD.Text ="★ BIENVENIDO A LEXTERLABS ★"_0x19FD.TextXAlignment = Enum.TextXAlignment.Left
local _0x5CD1 = Instance.new("TextLabel", _0xA9B4)
_0x5CD1.Size = UDim2.new(1, -150, 0, 32)
_0x5CD1.Position = UDim2.new(0, 136, 0, 48)
_0x5CD1.BackgroundTransparency = 1
_0x5CD1.Font = Enum.Font.GothamBlack
_0x5CD1.TextSize = 22
_0x5CD1.TextColor3 = Color3.fromRGB(255, 255, 255)
_0x5CD1.Text = _0x7281.DisplayName or _0x7281.Name
_0x5CD1.TextXAlignment = Enum.TextXAlignment.Left
_0x5CD1.TextTruncate = Enum.TextTruncate.AtEnd
local _0x27BB = Instance.new("UIGradient", _0x5CD1)
_0x27BB.Color = ColorSequence.new({
ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 230, 150)),
ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 200, 60))
})
local _0xBE8D = Instance.new("TextLabel", _0xA9B4)
_0xBE8D.Size = UDim2.new(1, -150, 0, 18)
_0xBE8D.Position = UDim2.new(0, 136, 0, 84)
_0xBE8D.BackgroundTransparency = 1
_0xBE8D.Font = Enum.Font.GothamBold
_0xBE8D.TextSize = 12
_0xBE8D.TextColor3 = Color3.fromRGB(90, 240, 150)
_0xBE8D.Text ="● Conectado al Hub"_0xBE8D.TextXAlignment = Enum.TextXAlignment.Left
local _0x0AE2 = Instance.new("Frame", _0xA9B4)
_0x0AE2.Size = UDim2.new(1, -32, 0, 2)
_0x0AE2.Position = UDim2.new(0, 16, 1, -10)
_0x0AE2.BackgroundColor3 = Color3.fromRGB(168, 85, 247)
_0x0AE2.BorderSizePixel = 0
_0x0AE2.BackgroundTransparency = 0.3
Instance.new("UICorner", _0x0AE2).CornerRadius = UDim.new(1, 0)
local _0x6A0F = Instance.new("UIGradient", _0x0AE2)
_0x6A0F.Color = ColorSequence.new({
ColorSequenceKeypoint.new(0, Color3.fromRGB(168, 85, 247)),
ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 215, 0)),
ColorSequenceKeypoint.new(1, Color3.fromRGB(168, 85, 247))
})
_0x669B:Create(_0xA9B4, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Position = UDim2.new(1, -470, 0, 30)}):Play()
task.spawn(function()
for _ = 1, 3 do
if not _0xF4C4.Parent then break end
_0x669B:Create(_0xF4C4, TweenInfo.new(0.6), {Transparency = 0.7, Thickness = 6}):Play()
task.wait(0.6)
if not _0xF4C4.Parent then break end
_0x669B:Create(_0xF4C4, TweenInfo.new(0.6), {Transparency = 0, Thickness = 3}):Play()
task.wait(0.6)
end
end)
task.spawn(function()
for _ = 1, 3 do
if not _0xE6D8.Parent then break end
_0x669B:Create(_0xE6D8, TweenInfo.new(0.5), {Transparency = 0.7}):Play()
task.wait(0.5)
if not _0xE6D8.Parent then break end
_0x669B:Create(_0xE6D8, TweenInfo.new(0.5), {Transparency = 0}):Play()
task.wait(0.5)
end
end)
task.spawn(function()
local _0x1A16 = Instance.new("Frame", _0xA9B4)
_0x1A16.Size = UDim2.new(0, 60, 1, 0)
_0x1A16.Position = UDim2.new(0, -80, 0, 0)
_0x1A16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
_0x1A16.BackgroundTransparency = 0.85
_0x1A16.BorderSizePixel = 0
_0x1A16.ZIndex = 5
Instance.new("UICorner", _0x1A16).CornerRadius = UDim.new(0, 20)
_0x669B:Create(_0x1A16, TweenInfo.new(1.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Position = UDim2.new(0, 440, 0, 0)}):Play()
task.wait(1.4)
if _0x1A16 and _0x1A16.Parent then _0x1A16:Destroy() end
end)
task.wait(3)
_0x669B:Create(_0xA9B4, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {Position = UDim2.new(1, 520, 0, 30), BackgroundTransparency = 1}):Play()
_0x669B:Create(_0xE6D8, TweenInfo.new(0.5), {Transparency = 1}):Play()
_0x669B:Create(_0x98E4, TweenInfo.new(0.5), {Transparency = 1}):Play()
task.wait(0.55)
_0x3F08:Destroy()
end)
end
local function _0xF626()
pcall(function()
local _0x25A2 = Instance.new("Sound")
_0x25A2.SoundId ="rbxassetid://9126073001"_0x25A2.Volume = 2.5
_0x25A2.RollOffMode = Enum.RollOffMode.Inverse
_0x25A2.RollOffMinDistance = 500
_0x25A2.RollOffMaxDistance = 5000
_0x25A2.Parent = _0x01C6
_0x25A2:Play()
task.delay(5, function() pcall(function() _0x25A2:Destroy() end) end)
end)
end
local function _0xC366(_0x4E38)
if not _0x4E38 then return"Unknown"end
if not tonumber(_0x4E38.Name) then return _0x4E38.Name end
if _0x70FF[_0x4E38] then return _0x70FF[_0x4E38] end
local _0xDBE4 = _0x4E38:FindFirstChild("Handle")
if not _0xDBE4 then _0x70FF[_0x4E38] = _0x4E38.Name; return _0x4E38.Name end
local _0xDE84 = {}
for _, child in ipairs(_0xDBE4:GetChildren()) do _0xDE84[child.Name] = true end
for _, source in ipairs({_0x96F4:FindFirstChild("Items"), _0x58B6}) do
if source then
for _, item in ipairs(source:GetDescendants()) do
if item:IsA("Tool") and item:FindFirstChild("Handle") then
local _0xF2D7 = true
for name in pairs(_0xDE84) do
if not item.Handle:FindFirstChild(name) then _0xF2D7 = false break end
end
if _0xF2D7 then _0x70FF[_0x4E38] = item.Name; return item.Name end
end
end
end
end
_0x70FF[_0x4E38] = _0x4E38.Name
return _0x4E38.Name
end
local function _0xB522(_0x4E38) return _0xC366(_0x4E38) end
local _0x1574 = {
["AK47"]="Legendary",["RPG"]="Mythic",["AWP"]="Legendary",["M249"]="Legendary",
["Draco"]="Legendary",["AUG"]="Epic",["M16"]="Epic",["G3"]="Epic",
["Remington"]="Epic",["M24"]="Epic",["Hunting Rifle"]="Epic",["P90"]="Epic",
["Bizon"]="Epic",["MP5"]="Epic",["C9"]="Epic",["Skorpion"]="Epic",
["Anaconda"]="Epic",["Double Barrel"]="Legendary",["Sawnoff"]="Legendary",
["Crossbow"]="Legendary",["Firework Launcher"]="Mythic",
["Tactical Axe"]="Legendary",["Tactical Knife"]="Legendary",
["Tactical Shovel"]="Legendary",["Combat Axe"]="Epic",
["Sledge Hammer"]="Legendary",["Machette"]="Epic",
["Barbed Baseball Bat"]="Epic",["Metal Baseball Bat"]="Epic",
}
local function _0x9E07(_0x4E38)
if not _0x4E38 then return"Unknown"end
if _0x7CE3[_0x4E38] then return _0x7CE3[_0x4E38] end
local _0xE293 ="Unknown"pcall(function()
local _0x6ACF = _0x4E38:GetAttribute("RarityName") or _0x4E38:GetAttribute("Rarity") or _0x4E38:GetAttribute("rarity")
if type(_0x6ACF) =="string"then
local _0x0A68 = _0x6ACF:sub(1,1):upper() .. _0x6ACF:sub(2):lower()
if _0xD704[_0x0A68] then _0xE293 = _0x0A68 end
end
end)
if _0xE293 =="Unknown"then
local _0x6802 = _0xB522(_0x4E38)
if _0x1574[_0x6802] then _0xE293 = _0x1574[_0x6802] end
end
_0x7CE3[_0x4E38] = _0xE293
return _0xE293
end
local function _0xBD7D(_0x4E38)
if not _0x4E38 then return""end
if _0x1D9B[_0x4E38] then return _0x1D9B[_0x4E38] end
local _0x16C4 =""pcall(function()
local _0x1BC9 = _0x4E38:GetAttribute("ImageId")
if _0x1BC9 and _0x1BC9 ~=""then _0x16C4 = _0x1BC9 end
end)
_0x1D9B[_0x4E38] = _0x16C4
return _0x16C4
end
local function _0xA22D(plr)
local _0xA238 = {}
if not plr then return _0xA238 end
local _0xFAD8 = plr.Character
local _0x557D = plr:FindFirstChild("Backpack")
if _0xFAD8 then
for _, _0x5092 in ipairs(_0xFAD8:GetChildren()) do
if _0x5092:IsA("Tool") and not _0x5513(_0x5092) then table.insert(_0xA238, {Tool=_0x5092, Equipped=true}) end
end
end
if _0x557D then
for _, _0x5092 in ipairs(_0x557D:GetChildren()) do
if _0x5092:IsA("Tool") and not _0x5513(_0x5092) then
local _0x8887 = false
for _, x in ipairs(_0xA238) do if x.Tool == _0x5092 then _0x8887 = true; break end end
if not _0x8887 then table.insert(_0xA238, {Tool=_0x5092, Equipped=false}) end
end
end
end
return _0xA238
end
local _0xCAD4 = {}
local _0x30DC = {}
local function _0x11F3()
if not _0x7681.WeaponWarnings then
_0xCAD4 = {}
_0x30DC = {}
return
end
local _0xCB22 = {}
for _, plr in ipairs(_0x9687:GetPlayers()) do
if plr ~= _0x7281 and not _0x132B(plr) and plr.Character then
local _0xF253 = {plr.Character}
local _0x557D = plr:FindFirstChild("Backpack")
if _0x557D then table.insert(_0xF253, _0x557D) end
for _, _0x9102 in ipairs(_0xF253) do
for _, _0x5092 in ipairs(_0x9102:GetChildren()) do
if _0x5092:IsA("Tool") and not _0x5513(_0x5092) then
local _0xE293 = _0x9E07(_0x5092)
if _0xE293 =="Legendary"or _0xE293 =="Mythic"or _0xE293 =="Epic"or _0xE293 =="Omega"then
local _0x6802 = _0xB522(_0x5092)
if not _0xCB22[_0x6802] then _0xCB22[_0x6802] = {_0xE882=0, _0xE293=_0xE293} end
_0xCB22[_0x6802].count = _0xCB22[_0x6802].count + 1
end
end
end
end
end
end
local _0x4063 = tick()
for weaponName, _0x37F9 in pairs(_0xCB22) do
local _0xD1A5 = _0xCAD4[weaponName] or 0
if _0x37F9.count > _0xD1A5 then
local _0x21AE = _0x30DC[weaponName] or 0
if _0x4063 - _0x21AE >= 0.3 then
_0x30DC[weaponName] = _0x4063
_0x55F2("Arma Rara", _0x37F9.count .."x  ".. weaponName, 3,"!", _0xD704[_0x37F9.rarity] or Color3.fromRGB(255, 90, 90))
if _0x7681.SoundAlerts then task.spawn(_0xF626) end
end
end
end
_0xCAD4 = {}
for weaponName, _0x37F9 in pairs(_0xCB22) do _0xCAD4[weaponName] = _0x37F9.count end
for weaponName in pairs(_0x30DC) do
if not _0xCB22[weaponName] then _0x30DC[weaponName] = nil end
end
end
local function _0xCFA5(_0xA238)
local _0x63D5 ="Unknown"local _0xF620 = 99
for _, td in ipairs(_0xA238) do
local _0xE293 = _0x9E07(td.Tool)
local _0x9E3A = _0x7B04[_0xE293] or 7
if _0x9E3A < _0xF620 then _0x63D5 = _0xE293; _0xF620 = _0x9E3A end
end
return _0x63D5
end
local function _0xCE91()
if _0x24F4 then _0x24F4:Destroy() end
local _0x3E1B = Instance.new("ScreenGui")
_0x3E1B.Name ="FOVCircleGUI"_0x3E1B.ResetOnSpawn = false
_0x3E1B.IgnoreGuiInset = true
_0x3E1B.DisplayOrder = 5
_0x3E1B.Parent = _0x395E
local _0x1B0E = Instance.new("Frame")
_0x1B0E.Size = UDim2.new(0, _0x9BAD.AimRadius * 2, 0, _0x9BAD.AimRadius * 2)
_0x1B0E.AnchorPoint = Vector2.new(0.5, 0.5)
_0x1B0E.Position = UDim2.new(0.5, 0, 0.5, 0)
_0x1B0E.BackgroundTransparency = 1
_0x1B0E.BorderSizePixel = 0
_0x1B0E.Parent = _0x3E1B
local _0xE184 = Instance.new("UIStroke", _0x1B0E)
_0xE184.Color = Color3.fromRGB(168, 85, 247)
_0xE184.Transparency = 0.5
_0xE184.Thickness = 1.5
local _0xADAB = Instance.new("UICorner", _0x1B0E)
_0xADAB.CornerRadius = UDim.new(1, 0)
_0x24F4 = _0x1B0E
_0x24F4.Visible = false
end
local function _0x79AB()
if _0x24F4 then
_0x24F4.Visible = _0x7681.ShowFOV and _0x7681.AimbotEnabled and not _0x4809.active
end
end
local function _0x1D7F()
if _0x24F4 then
local _0x6089 = _0x9BAD.AimRadius
_0x24F4.Size = UDim2.new(0, _0x6089 * 2, 0, _0x6089 * 2)
end
end
local function _0xA6EC()
if not _0x7681.AimbotRotationEnabled then return end
_0xE2BD = _0xE2BD + 1
if _0xE2BD >= (_0x9BAD.AimbotRotationShots or 4) then
_0xE2BD = 0
_0x87CE = (_0x87CE =="Head") and"Body"or"Head"_0x55F2("Rotacion","Cambio a ".. _0x87CE, 1,"R", Color3.fromRGB(168, 85, 247))
end
end
local function _0x48B4(_0x4E38)
if not _0x4E38 then return nil end
local _0x43AB = {"Ammo","AmmoCount","CurrentAmmo","Clip","Mag","Magazine","Bullets"}
for _, n in ipairs(_0x43AB) do
local _0x3157 = _0x4E38:GetAttribute(n)
if type(_0x3157) =="number"then return _0x3157 end
end
for _, _0x9102 in ipairs(_0x4E38:GetChildren()) do
if _0x9102:IsA("NumberValue") then
for _, n in ipairs(_0x43AB) do if _0x9102.Name == n then return _0x9102.Value end end
end
end
for _, _0x49F7 in ipairs(_0x4E38:GetDescendants()) do
if _0x49F7:IsA("NumberValue") then
for _, n in ipairs(_0x43AB) do if _0x49F7.Name == n then return _0x49F7.Value end end
end
end
return nil
end
local function _0xCB28(_0x4E38)
if not _0x4E38 or not _0x4E38:IsA("Tool") then return end
for _, _0x9102 in ipairs(_0xFF8D) do if _0x9102.tool == _0x4E38 then return end end
local _0xF3EE = _0x4E38.Activated:Connect(function()
if not _0x7681.AimbotRotationEnabled then return end
if _0x48B4(_0x4E38) ~= nil then return end
_0xA6EC()
end)
table.insert(_0xFF8D, {_0x4E38 = _0x4E38, _0xF3EE = _0xF3EE})
end
local function _0x7300()
for _, _0x9102 in ipairs(_0xFF8D) do pcall(function() _0x9102.conn:Disconnect() end) end
_0xFF8D = {}
end
local function _0x1281(_0xFAD8)
_0x7300()
if not _0xFAD8 then return end
for _, child in ipairs(_0xFAD8:GetChildren()) do
if child:IsA("Tool") then _0xCB28(child) end
end
table.insert(_0xBB1D, _0xFAD8.ChildAdded:Connect(function(child)
if child:IsA("Tool") then
task.wait(0.1)
_0xCB28(child)
end
end))
table.insert(_0xBB1D, _0xFAD8.ChildRemoved:Connect(function(child)
if child:IsA("Tool") then
for _0x84BC, _0x9102 in ipairs(_0xFF8D) do
if _0x9102.tool == child then
pcall(function() _0x9102.conn:Disconnect() end)
table.remove(_0xFF8D, _0x84BC)
break
end
end
end
end))
end
_0x4841(_0xE9E5.InputBegan, function(input, gp)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
if not gp then
_0x6D6C = true
_0xCEEA = tick()
_0x42E1 = tick()
end
end
end)
_0x4841(_0xE9E5.InputEnded, function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then _0x6D6C = false end
end)
task.spawn(function()
while not _0x8EFC do
task.wait(0.03)
if not _0x7681.AimbotRotationEnabled then
_0x1D95 = nil
task.wait(0.3)
continue
end
local _0xFAD8 = _0x7281.Character
if not _0xFAD8 then _0x1D95 = nil; continue end
local _0x4E38 = _0xFAD8:FindFirstChildOfClass("Tool")
if not _0x4E38 then _0x1D95 = nil; continue end
local _0xAA86 = _0x48B4(_0x4E38)
if _0xAA86 ~= nil then
if _0x1D95 ~= nil and _0xAA86 < _0x1D95 then _0xA6EC() end
_0x1D95 = _0xAA86
else
_0x1D95 = nil
if _0x6D6C then
if tick() - _0xCEEA >= 0.12 then
local _0x4D67 = _0x9BAD.AimbotFireRate or 10
if _0x4D67 < 1 then _0x4D67 = 1 end
local _0x4A3E = 1 / _0x4D67
if tick() - _0x42E1 >= _0x4A3E then
_0x42E1 = tick()
_0xA6EC()
end
end
end
end
end
end)
if _0x7281.Character then task.spawn(function() _0x1281(_0x7281.Character) end) end
_0x4841(_0x7281.CharacterAdded, function(_0xFAD8)
task.wait(0.5)
_0x1281(_0xFAD8)
_0x87CE = _0x146B
_0xE2BD = 0
_0x1D95 = nil
end)
local function _0x5AE2(plr)
if not plr or not plr.Character then return nil end
local _0xB11A = _0x146B
if _0x7681.AimbotRotationEnabled then _0xB11A = _0x87CE end
if _0xB11A =="Head"then
return plr.Character:FindFirstChild("Head")
else
return plr.Character:FindFirstChild("HumanoidRootPart")
or plr.Character:FindFirstChild("UpperTorso")
or plr.Character:FindFirstChild("Torso")
or plr.Character:FindFirstChild("Head")
end
end
local function _0xEE17(plr)
if not plr or not plr.Character then return false end
local _0xE7A2 = plr.Character:FindFirstChild("Humanoid")
if not _0xE7A2 or _0xE7A2.Health <= 0 then return false end
return true
end
local function _0xD9E8(_0xC7B3)
local _0x0725 = _0xD192()
if not _0x0725 then return false end
return (_0xC7B3 - _0x0725.CFrame.Position).Magnitude <= _0x9BAD.MaxDistance
end
local function _0x44D8()
local _0x0725 = _0xD192()
if not _0x0725 then return nil end
local _0x7008 = Vector2.new(_0x0725.ViewportSize.X/2, _0x0725.ViewportSize.Y/2)
local _0x7327, _0x90ED = nil, math.huge
for _, plr in ipairs(_0x9687:GetPlayers()) do
if plr ~= _0x7281 and _0xEE17(plr) and _0xC5A6(plr) then
local _0xEAE6 = _0x5AE2(plr)
if _0xEAE6 and _0xD9E8(_0xEAE6.Position) then
local _0x7EDF, _0xF6B5 = _0x0725:WorldToViewportPoint(_0xEAE6.Position)
if _0xF6B5 then
local _0x49F7 = (Vector2.new(_0x7EDF.X, _0x7EDF.Y) - _0x7008).Magnitude
if _0x49F7 <= _0x9BAD.AimRadius and _0x49F7 < _0x90ED then _0x90ED = _0x49F7; _0x7327 = plr end
end
end
end
end
return _0x7327
end
local function _0x7081()
if _0x8EFC then return end
if _0x4809.active then return end
if not _0x7681.AimbotEnabled or not _0xD194 then
_0x7B09 = nil
_0x1767 = 0
return
end
local _0x0725 = _0xD192()
if not _0x0725 then return end
if _0x7B09 then
local _0xEAE6 = _0x5AE2(_0x7B09)
local _0x61ED = false
if _0xEAE6 then
if tick() - _0x1767 < _0x9BAD.LockDuration then _0x61ED = true
elseif _0xD9E8(_0xEAE6.Position) then _0x61ED = true end
end
if not _0xC5A6(_0x7B09) then _0x61ED = false end
if not _0x61ED then _0x7B09 = nil; _0x1767 = 0 end
end
if not _0x7B09 then
local _0x7327 = _0x44D8()
if _0x7327 then _0x7B09 = _0x7327; _0x1767 = tick() end
end
if not _0x7B09 then return end
local _0xEAE6 = _0x5AE2(_0x7B09)
if not _0xEAE6 then return end
local _0x9ECB = _0x7281.Character
local _0xBDBB = nil
if _0x9ECB then _0xBDBB = _0x9ECB:FindFirstChild("Humanoid") end
local _0xE040 = (_0xBDBB ~= nil and _0xBDBB.SeatPart ~= nil)
local _0x7EFE = false
if _0xE040 then
local _0x6DEE = string.lower(_0xBDBB.SeatPart.Name)
if string.find(_0x6DEE,"pass") or string.find(_0x6DEE,"copi") then _0x7EFE = false else _0x7EFE = true end
end
local _0x80BF = _0x0725.CFrame.Position
local _0xA14E = _0x80BF
if _0x9ECB then
local _0x44A7 = _0x9ECB:FindFirstChild("HumanoidRootPart")
if _0x44A7 then _0xA14E = _0x44A7.Position end
end
local _0xB11A = _0x146B
if _0x7681.AimbotRotationEnabled then _0xB11A = _0x87CE end
local _0xFA22
if _0xE040 and _0x7EFE then
if _0xB11A =="Head"then _0xFA22 = _0xEAE6.Position + Vector3.new(0, _0xC997, 0)
else _0xFA22 = _0xEAE6.Position + Vector3.new(0, _0x7BB1, 0) end
else
_0xFA22 = _0xEAE6.Position + Vector3.new(0, _0x9BAD.AimOffsetY or 0, 0)
end
local _0xD7AD = (_0xFA22 - _0xA14E)
if _0xD7AD.Magnitude < 0.001 then return end
_0xD7AD = _0xD7AD.Unit
local _0x38BF = _0x9BAD.Smoothness / 100
local _0x3FC7
if _0x38BF >= 0.99 then
_0x3FC7 = CFrame.lookAt(_0x80BF, _0x80BF + _0xD7AD)
else
local _0xA941 = _0x0725.CFrame.LookVector
local _0x3DE4 = _0xA941:Lerp(_0xD7AD, _0x38BF).Unit
_0x3FC7 = CFrame.lookAt(_0x80BF, _0x80BF + _0x3DE4)
end
_0x0725.CFrame = _0x3FC7
end
local function _0x6CC8(_0xC7B3)
local _0x0725 = _0xD192()
if not _0x0725 then return false end
return (_0xC7B3 - _0x0725.CFrame.Position).Magnitude <= _0x9BAD.ESPDistance
end
local function _0xBF72(plr)
if plr == _0x7281 then return end
if not _0x7681.Chams then
if _0x4F4B[plr.UserId] then pcall(function() _0x4F4B[plr.UserId]:Destroy() end) _0x4F4B[plr.UserId] = nil end
return
end
local _0xFAD8 = plr.Character
if not _0xFAD8 then
if _0x4F4B[plr.UserId] then pcall(function() _0x4F4B[plr.UserId]:Destroy() end) _0x4F4B[plr.UserId] = nil end
return
end
local _0x862C = _0xFAD8:FindFirstChild("HumanoidRootPart")
local _0xE7A2 = _0xFAD8:FindFirstChild("Humanoid")
if not _0x862C or not _0xE7A2 or _0xE7A2.Health <= 0 or not _0xC5A6(plr) or not _0x6CC8(_0x862C.Position) then
if _0x4F4B[plr.UserId] then _0x4F4B[plr.UserId].Enabled = false end
return
end
local _0x4EA1 = _0x4F4B[plr.UserId]
if _0x4EA1 and _0x4EA1.Adornee ~= _0xFAD8 then pcall(function() _0x4EA1:Destroy() end); _0x4EA1 = nil; _0x4F4B[plr.UserId] = nil end
if not _0x4EA1 then
_0x4EA1 = Instance.new("Highlight")
_0x4EA1.Adornee = _0xFAD8
_0x4EA1.Parent = _0xFAD8
_0x4F4B[plr.UserId] = _0x4EA1
end
_0x4EA1.FillTransparency = 0.78
_0x4EA1.OutlineColor = Color3.fromRGB(0, 0, 0)
_0x4EA1.OutlineTransparency = 0
_0x4EA1.FillColor = _0x132B(plr) and Color3.fromRGB(100, 150, 255) or Color3.fromRGB(255, 0, 0)
_0x4EA1.Enabled = true
end
local function _0x996F()
if _0x8EFC then return end
if not _0x7681.Chams then
for userId, _0x4EA1 in pairs(_0x4F4B) do if _0x4EA1 then pcall(function() _0x4EA1:Destroy() end) end end
_0x4F4B = {}
return
end
for _, plr in ipairs(_0x9687:GetPlayers()) do if plr ~= _0x7281 then _0xBF72(plr) end end
end
local function _0xD078(plr)
if plr == _0x7281 then return end
local function _0x0A43()
_0x571D(plr.UserId)
task.wait(0.15)
if _0x8EFC then return end
if plr.Parent and plr.Character then _0xBF72(plr) end
end
if plr.Character then task.spawn(_0x0A43) end
table.insert(_0xBB1D, plr.CharacterAdded:Connect(function() task.spawn(_0x0A43) end))
table.insert(_0xBB1D, plr.CharacterRemoving:Connect(function() _0x571D(plr.UserId) end))
end
local _0xF23E = nil
_0x4841(_0x9687.PlayerAdded, function(plr)
if plr:IsFriendsWith(_0x7281.UserId) then _0xDA87[plr.UserId] = true end
if _0x195D[plr.UserId] == nil then
if plr:IsFriendsWith(_0x7281.UserId) then _0x195D[plr.UserId] = false else _0x195D[plr.UserId] = true end
end
_0xD078(plr)
task.spawn(function()
task.wait(0.3)
if not _0x8EFC then _0xBF72(plr) end
if _0xF23E then pcall(_0xF23E) end
end)
end)
_0x4841(_0x9687.PlayerRemoving, function(plr)
_0xDA87[plr.UserId] = nil
_0x195D[plr.UserId] = nil
_0x571D(plr.UserId)
if _0xF23E then pcall(_0xF23E) end
end)
for _, plr in ipairs(_0x9687:GetPlayers()) do
if plr ~= _0x7281 then
if plr:IsFriendsWith(_0x7281.UserId) then _0xDA87[plr.UserId] = true end
if _0x195D[plr.UserId] == nil then
if plr:IsFriendsWith(_0x7281.UserId) then _0x195D[plr.UserId] = false else _0x195D[plr.UserId] = true end
end
_0xD078(plr)
end
end
task.spawn(function() while not _0x8EFC do task.wait(5); _0x899E() end end)
local _0x98F9 = {"Head","UpperTorso","LowerTorso","LeftUpperArm","LeftLowerArm","LeftHand","RightUpperArm","RightLowerArm","RightHand","LeftUpperLeg","LeftLowerLeg","LeftFoot","RightUpperLeg","RightLowerLeg","RightFoot"}
local _0x23A8 = {
{"Head","UpperTorso"},{"UpperTorso","LowerTorso"},
{"UpperTorso","LeftUpperArm"},{"LeftUpperArm","LeftLowerArm"},{"LeftLowerArm","LeftHand"},
{"UpperTorso","RightUpperArm"},{"RightUpperArm","RightLowerArm"},{"RightLowerArm","RightHand"},
{"LowerTorso","LeftUpperLeg"},{"LeftUpperLeg","LeftLowerLeg"},{"LeftLowerLeg","LeftFoot"},
{"LowerTorso","RightUpperLeg"},{"RightUpperLeg","RightLowerLeg"},{"RightLowerLeg","RightFoot"}
}
local _0xC226 = {"Head","Torso","Left Arm","Right Arm","Left Leg","Right Leg"}
local _0x083B = {{"Head","Torso"},{"Torso","Left Arm"},{"Torso","Right Arm"},{"Torso","Left Leg"},{"Torso","Right Leg"}}
local function _0xE372(plr)
if not _0x118C then return end
if _0x3D60[plr.UserId] then
for _, _0x0AE2 in pairs(_0x3D60[plr.UserId].lines) do if _0x0AE2 then pcall(function() _0x0AE2:Remove() end) end end
end
local _0xE7A2 = plr.Character and plr.Character:FindFirstChild("Humanoid")
local _0xD741 = _0xE7A2 and _0xE7A2.RigType == Enum.HumanoidRigType.R6
local _0x246C = _0xD741 and _0xC226 or _0x98F9
local _0x3AAE = _0xD741 and _0x083B or _0x23A8
local _0xFF85 = {}
for _0x84BC = 1, #_0x3AAE do
local _0x0AE2 = Drawing.new("Line")
_0x0AE2.Thickness = 1.5
_0x0AE2.Transparency = 0.7
_0x0AE2.Color = Color3.fromRGB(255, 255, 255)
_0x0AE2.Visible = false
_0xFF85[_0x84BC] = _0x0AE2
end
_0x3D60[plr.UserId] = {_0xFF85=_0xFF85, smoothedPoints={}, initialized=false, character=plr.Character, _0x246C=_0x246C, _0x3AAE=_0x3AAE}
end
local function _0xDE51(userId)
local _0x37F9 = _0x3D60[userId]
if _0x37F9 then for _, _0x0AE2 in pairs(_0x37F9.lines) do if _0x0AE2 then _0x0AE2.Visible = false end end end
end
local function _0xC33C()
if _0x8EFC then return end
if not _0x7681.Skeleton or not _0x118C then
for userId in pairs(_0x3D60) do _0xDE51(userId) end
return
end
local _0x0725 = _0xD192()
if not _0x0725 then return end
for _, plr in ipairs(_0x9687:GetPlayers()) do
if plr ~= _0x7281 then
local _0xFAD8 = plr.Character
if not _0xFAD8 then _0xDE51(plr.UserId) continue end
local _0x37F9 = _0x3D60[plr.UserId]
if not _0x37F9 or _0x37F9.character ~= _0xFAD8 then _0xE372(plr); _0x37F9 = _0x3D60[plr.UserId] end
if not _0x37F9 then continue end
local _0xE7A2 = _0xFAD8:FindFirstChild("Humanoid")
local _0x862C = _0xFAD8:FindFirstChild("HumanoidRootPart")
if not _0xE7A2 or _0xE7A2.Health <= 0 or not _0x862C or not _0xC5A6(plr) or not _0x6CC8(_0x862C.Position) then
_0xDE51(plr.UserId)
_0x37F9.initialized = false
continue
end
local _0x8C92 = {}
for _, partName in ipairs(_0x37F9.parts) do
local _0xEAE6 = _0xFAD8:FindFirstChild(partName)
if _0xEAE6 then
local _0xC7B3, _0x1654 = _0x0725:WorldToViewportPoint(_0xEAE6.Position)
if _0x1654 then _0x8C92[partName] = Vector2.new(_0xC7B3.X, _0xC7B3.Y) end
end
end
for partName in pairs(_0x37F9.smoothedPoints) do
if not _0x8C92[partName] then _0x37F9.smoothedPoints[partName] = nil end
end
if not _0x37F9.initialized then _0x37F9.smoothedPoints = _0x8C92; _0x37F9.initialized = true
else
local _0x167C = _0x9BAD.SkeletonSmoothness
for partName, currentPos in pairs(_0x8C92) do
local _0xF559 = _0x37F9.smoothedPoints[partName]
if _0xF559 then _0x37F9.smoothedPoints[partName] = _0xF559:Lerp(currentPos, _0x167C)
else _0x37F9.smoothedPoints[partName] = currentPos end
end
end
for _0x84BC, _0xF3EE in ipairs(_0x37F9.connections) do
local _0xC828 = _0x37F9.smoothedPoints[_0xF3EE[1]]
local _0xE19A = _0x37F9.smoothedPoints[_0xF3EE[2]]
local _0x0AE2 = _0x37F9.lines[_0x84BC]
if _0x0AE2 then
if _0xC828 and _0xE19A then _0x0AE2.From = _0xC828; _0x0AE2.To = _0xE19A; _0x0AE2.Visible = true
else _0x0AE2.Visible = false end
end
end
end
end
end
local function _0x0094(h, _0xEA79, _0x3157)
local _0x6089, _0xFE35, _0x96B0
local _0x84BC = math.floor(h * 6)
local _0x6DBC = h * 6 - _0x84BC
local _0x13AB = _0x3157 * (1 - _0xEA79)
local _0xDBEE = _0x3157 * (1 - _0x6DBC * _0xEA79)
local _0x5092 = _0x3157 * (1 - (1 - _0x6DBC) * _0xEA79)
_0x84BC = _0x84BC % 6
if _0x84BC == 0 then _0x6089, _0xFE35, _0x96B0 = _0x3157, _0x5092, _0x13AB
elseif _0x84BC == 1 then _0x6089, _0xFE35, _0x96B0 = _0xDBEE, _0x3157, _0x13AB
elseif _0x84BC == 2 then _0x6089, _0xFE35, _0x96B0 = _0x13AB, _0x3157, _0x5092
elseif _0x84BC == 3 then _0x6089, _0xFE35, _0x96B0 = _0x13AB, _0xDBEE, _0x3157
elseif _0x84BC == 4 then _0x6089, _0xFE35, _0x96B0 = _0x5092, _0x13AB, _0x3157
elseif _0x84BC == 5 then _0x6089, _0xFE35, _0x96B0 = _0x3157, _0x13AB, _0xDBEE end
return Color3.new(_0x6089, _0xFE35, _0x96B0)
end
local function _0x35F7(plr)
if not _0x118C then return end
if _0xB570[plr.UserId] then
for _, _0x0AE2 in pairs(_0xB570[plr.UserId].lines) do if _0x0AE2 then pcall(function() _0x0AE2:Remove() end) end end
end
local _0xFF85 = {}
for _0x84BC = 1, 4 do
local _0x0AE2 = Drawing.new("Line")
_0x0AE2.Thickness = 1.5
_0x0AE2.Transparency = 0.8
_0x0AE2.Visible = false
_0xFF85[_0x84BC] = _0x0AE2
end
_0xB570[plr.UserId] = {_0xFF85=_0xFF85, character=plr.Character}
end
local function _0x45F1(userId)
local _0x37F9 = _0xB570[userId]
if _0x37F9 then for _, _0x0AE2 in pairs(_0x37F9.lines) do if _0x0AE2 then _0x0AE2.Visible = false end end end
end
local function _0xE3C9()
if _0x8EFC then return end
if not _0x7681.Box or not _0x118C then
for userId in pairs(_0xB570) do _0x45F1(userId) end
return
end
_0x927C = (_0x927C + 0.01) % 1
local _0x67D0 = _0x0094(_0x927C, 1, 1)
local _0x0725 = _0xD192()
if not _0x0725 then return end
for _, plr in ipairs(_0x9687:GetPlayers()) do
if plr ~= _0x7281 then
local _0xFAD8 = plr.Character
if not _0xFAD8 then _0x45F1(plr.UserId) continue end
local _0x37F9 = _0xB570[plr.UserId]
if not _0x37F9 or _0x37F9.character ~= _0xFAD8 then _0x35F7(plr); _0x37F9 = _0xB570[plr.UserId] end
if not _0x37F9 then continue end
local _0xE7A2 = _0xFAD8:FindFirstChild("Humanoid")
local _0x862C = _0xFAD8:FindFirstChild("HumanoidRootPart")
local _0x04C7 = _0xFAD8:FindFirstChild("Head")
if not _0xE7A2 or _0xE7A2.Health <= 0 or not _0x862C or not _0x04C7 or not _0xC5A6(plr) or not _0x6CC8(_0x862C.Position) then
_0x45F1(plr.UserId)
continue
end
local _0xBA62, _0xBCA2, _0x716D, _0x7392 = math.huge, -math.huge, math.huge, -math.huge
local _0x246C = {_0x04C7, _0x862C, _0xFAD8:FindFirstChild("UpperTorso"), _0xFAD8:FindFirstChild("LowerTorso")}
for _, _0xEAE6 in ipairs(_0x246C) do
if _0xEAE6 then
local _0xC7B3, _0x1654 = _0x0725:WorldToViewportPoint(_0xEAE6.Position)
if _0x1654 then
if _0xC7B3.X < _0xBA62 then _0xBA62 = _0xC7B3.X end
if _0xC7B3.X > _0xBCA2 then _0xBCA2 = _0xC7B3.X end
if _0xC7B3.Y < _0x716D then _0x716D = _0xC7B3.Y end
if _0xC7B3.Y > _0x7392 then _0x7392 = _0xC7B3.Y end
end
end
end
if _0xBA62 == math.huge then _0x45F1(plr.UserId) continue end
for _, _0x0AE2 in pairs(_0x37F9.lines) do _0x0AE2.Color = _0x67D0 end
_0x37F9.lines[1].From = Vector2.new(_0xBA62, _0x716D); _0x37F9.lines[1].To = Vector2.new(_0xBCA2, _0x716D); _0x37F9.lines[1].Visible = true
_0x37F9.lines[2].From = Vector2.new(_0xBCA2, _0x716D); _0x37F9.lines[2].To = Vector2.new(_0xBCA2, _0x7392); _0x37F9.lines[2].Visible = true
_0x37F9.lines[3].From = Vector2.new(_0xBCA2, _0x7392); _0x37F9.lines[3].To = Vector2.new(_0xBA62, _0x7392); _0x37F9.lines[3].Visible = true
_0x37F9.lines[4].From = Vector2.new(_0xBA62, _0x7392); _0x37F9.lines[4].To = Vector2.new(_0xBA62, _0x716D); _0x37F9.lines[4].Visible = true
end
end
end
local function _0x78A2(plr)
local _0xFAD8 = plr.Character
local _0x04C7 = _0xFAD8 and _0xFAD8:FindFirstChild("Head")
if not _0x04C7 then return nil end
if _0x6F5E[plr.UserId] then pcall(function() _0x6F5E[plr.UserId].gui:Destroy() end); _0x6F5E[plr.UserId] = nil end
local _0x3E1B = Instance.new("BillboardGui")
_0x3E1B.Name ="ESPContainer"_0x3E1B.Size = UDim2.new(0, 180, 0, 80)
_0x3E1B.StudsOffset = Vector3.new(0, 3, 0)
_0x3E1B.AlwaysOnTop = true_0x3E1B.MaxDistance = 100000
_0x3E1B.ResetOnSpawn = false
_0x3E1B.Parent = _0x04C7
local _0x833E = Instance.new("TextLabel")
_0x833E.Size = UDim2.new(1, 0, 0, 12)
_0x833E.BackgroundTransparency = 1
_0x833E.Font = Enum.Font.SourceSansBold
_0x833E.TextSize = 10
_0x833E.TextStrokeTransparency = 0.5
_0x833E.Text = plr.Name
_0x833E.Parent = _0x3E1B
local _0x583C = Instance.new("Frame")
_0x583C.Size = UDim2.new(0, 60, 0, 4)
_0x583C.Position = UDim2.new(0.5, -30, 0, 14)
_0x583C.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_0x583C.BackgroundTransparency = 0.3
_0x583C.BorderSizePixel = 0
_0x583C.Parent = _0x3E1B
local _0xBFE5 = Instance.new("Frame")
_0xBFE5.Size = UDim2.new(1, 0, 1, 0)
_0xBFE5.BackgroundColor3 = Color3.fromRGB(50, 200, 50)
_0xBFE5.BorderSizePixel = 0
_0xBFE5.Parent = _0x583C
local _0x4663 = Instance.new("Frame")
_0x4663.Size = UDim2.new(0, 100, 0, 20)
_0x4663.Position = UDim2.new(0.5, -50, 0, 20)
_0x4663.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_0x4663.BackgroundTransparency = 0.75
_0x4663.BorderSizePixel = 0
_0x4663.Visible = false
_0x4663.Parent = _0x3E1B
local _0xED75 = Instance.new("UIListLayout")
_0xED75.SortOrder = Enum.SortOrder.LayoutOrder
_0xED75.Padding = UDim.new(0, 0)
_0xED75.Parent = _0x4663
Instance.new("UICorner", _0x4663).CornerRadius = UDim.new(0, 3)
_0x6F5E[plr.UserId] = {_0x3E1B=_0x3E1B, _0x833E=_0x833E, _0x583C=_0x583C, _0xBFE5=_0xBFE5, _0x4663=_0x4663, invItems={}, lastTools={}, RareWeaponsHistory={}}
return _0x6F5E[plr.UserId]
end
local function _0x0529(plr)
if _0x8EFC then return end
local _0xD5D6 = _0x7681.NameESP or _0x7681.HealthBar or _0x7681.InventoryViewer
if not _0xD5D6 then
if _0x6F5E[plr.UserId] and _0x6F5E[plr.UserId].gui then
_0x6F5E[plr.UserId].gui.Enabled = false
_0x6F5E[plr.UserId].invFrame.Visible = false
end
return
end
if not _0xC5A6(plr) then
if _0x6F5E[plr.UserId] and _0x6F5E[plr.UserId].gui then
_0x6F5E[plr.UserId].gui.Enabled = false
_0x6F5E[plr.UserId].invFrame.Visible = false
end
return
end
local _0xFAD8 = plr.Character
if not _0xFAD8 then return end
local _0x04C7 = _0xFAD8:FindFirstChild("Head")
local _0xE7A2 = _0xFAD8:FindFirstChild("Humanoid")
local _0x862C = _0xFAD8:FindFirstChild("HumanoidRootPart")
if not _0x04C7 or not _0xE7A2 or _0xE7A2.Health <= 0 then return end
local _0xDD83 = _0x6F5E[plr.UserId]
if not _0xDD83 or not _0xDD83.gui or _0xDD83.gui.Parent ~= _0x04C7 then _0xDD83 = _0x78A2(plr) end
if not _0xDD83 then return end
local _0x0725 = _0xD192()
if not _0x0725 then return end
local _0x29BB = (_0x862C.Position - _0x0725.CFrame.Position).Magnitude
local _0xB5AF = _0x9BAD.ESPDistance
if _0x7681.InventoryViewer then _0xB5AF = math.max(_0x9BAD.ESPDistance, _0x9BAD.InvDistance) end
local _0xC320 = _0x29BB <= _0xB5AF
if _0xD5D6 and _0xC320 then
_0xDD83.gui.Enabled = true
else_0xDD83.gui.Enabled = false
_0xDD83.nameLabel.Visible = false
_0xDD83.healthBar.Visible = false
_0xDD83.invFrame.Visible = false
return
end
_0xDD83.nameLabel.Visible = _0x7681.NameESP
if _0x7681.NameESP then
_0xDD83.nameLabel.Text = plr.Name
_0xDD83.nameLabel.TextColor3 = _0x132B(plr) and Color3.fromRGB(100,150,255) or Color3.fromRGB(255,255,255)
end
if _0x7681.HealthBar then
_0xDD83.healthBar.Visible = true
local _0xE878 = math.clamp(_0xE7A2.Health / _0xE7A2.MaxHealth, 0, 1)
_0xDD83.healthFill.Size = UDim2.new(_0xE878, 0, 1, 0)
if _0xE878 > 0.5 then _0xDD83.healthFill.BackgroundColor3 = Color3.fromRGB(50,200,50)
elseif _0xE878 > 0.25 then _0xDD83.healthFill.BackgroundColor3 = Color3.fromRGB(255,200,0)
else _0xDD83.healthFill.BackgroundColor3 = Color3.fromRGB(255,0,0) end
else _0xDD83.healthBar.Visible = false end
if _0x7681.InventoryViewer and _0x29BB <= _0x9BAD.InvDistance then
local _0xA238 = _0xA22D(plr)
local _0x769F = {}
for _, td in ipairs(_0xA238) do if td.Equipped then table.insert(_0x769F, td) end end
for _, td in ipairs(_0xA238) do if not td.Equipped then table.insert(_0x769F, td) end end
_0xA238 = {}
for _0x84BC, td in ipairs(_0x769F) do
table.insert(_0xA238, td)
if #_0xA238 >= 6 then break end
end
if #_0xA238 > 0 then
_0xDD83.invFrame.Visible = true
local _0x7AFC = false
if #_0xA238 ~= #_0xDD83.lastTools then _0x7AFC = true
else
for _0x84BC, td in ipairs(_0xA238) do
local _0x90A9 = _0xDD83.lastTools[_0x84BC]
if not _0x90A9 or _0x90A9.Tool ~= td.Tool then _0x7AFC = true; break end
end
end
if _0x7AFC then
for _, item in ipairs(_0xDD83.invItems) do if item then item:Destroy() end end
_0xDD83.invItems = {}
_0xDD83.invFrame.Size = UDim2.new(0, 100, 0, 12 * #_0xA238 + 2)
for _0x84BC, td in ipairs(_0xA238) do
local _0x6802 = _0xB522(td.Tool)
local _0x3E71 = _0x9E07(td.Tool)
local _0x9AA9 = _0xD704[_0x3E71] or _0xD704.Unknown
local _0xDBD6 = Instance.new("TextLabel")
_0xDBD6.Size = UDim2.new(1, -4, 0, 11)
_0xDBD6.Position = UDim2.new(0, 2, 0, 1 + (_0x84BC-1) * 12)
_0xDBD6.BackgroundTransparency = 1
_0xDBD6.Font = Enum.Font.GothamBold
_0xDBD6.TextSize = 6
_0xDBD6.TextColor3 = _0x9AA9
_0xDBD6.Text = (td.Equipped and"★ "or"") .. _0x6802
_0xDBD6.TextXAlignment = Enum.TextXAlignment.Center
_0xDBD6.TextTruncate = Enum.TextTruncate.AtEnd
_0xDBD6.Parent = _0xDD83.invFrame
table.insert(_0xDD83.invItems, _0xDBD6)
end
local _0x1B78 = {}
for _0x84BC, td in ipairs(_0xA238) do _0x1B78[_0x84BC] = {Tool=td.Tool, Equipped=td.Equipped} end
_0xDD83.lastTools = _0x1B78
end
else _0xDD83.invFrame.Visible = false end
else _0xDD83.invFrame.Visible = false end
end
local function _0x7CE7()
if _0x8EFC then return end
if not _0x7681.InvChams then
for userId, _0x4EA1 in pairs(_0xC5FA) do if _0x4EA1 then pcall(function() _0x4EA1:Destroy() end) end end
_0xC5FA = {}
return
end
local _0x0725 = _0xD192()
if not _0x0725 then return end
for _, plr in ipairs(_0x9687:GetPlayers()) do
if plr ~= _0x7281 then
local _0xFAD8 = plr.Character
if not _0xFAD8 then
if _0xC5FA[plr.UserId] then pcall(function() _0xC5FA[plr.UserId]:Destroy() end) _0xC5FA[plr.UserId] = nil end
continue
end
local _0xE7A2 = _0xFAD8:FindFirstChild("Humanoid")
local _0x862C = _0xFAD8:FindFirstChild("HumanoidRootPart")
if not _0xE7A2 or _0xE7A2.Health <= 0 or not _0x862C or not _0xC5A6(plr) then
if _0xC5FA[plr.UserId] then _0xC5FA[plr.UserId].Enabled = false end
continue
end
local _0x29BB = (_0x862C.Position - _0x0725.CFrame.Position).Magnitude
if _0x29BB <= _0x9BAD.InvDistance then
local _0xA238 = _0xA22D(plr)
if #_0xA238 == 0 then
if _0xC5FA[plr.UserId] then _0xC5FA[plr.UserId].Enabled = false end
continue
end
local _0x63D5 = _0xCFA5(_0xA238)
local _0x327E = _0x258A[_0x63D5] or _0x258A.Unknown
local _0x4EA1 = _0xC5FA[plr.UserId]
if _0x4EA1 and _0x4EA1.Adornee == _0xFAD8 then _0x4EA1.FillColor = _0x327E; _0x4EA1.Enabled = true
else
if _0x4EA1 then _0x4EA1:Destroy() end
_0x4EA1 = Instance.new("Highlight")
_0x4EA1.FillColor = _0x327E
_0x4EA1.FillTransparency = 0.78
_0x4EA1.OutlineColor = Color3.fromRGB(0, 0, 0)
_0x4EA1.OutlineTransparency = 0
_0x4EA1.Adornee = _0xFAD8
_0x4EA1.Parent = _0xFAD8
_0xC5FA[plr.UserId] = _0x4EA1
end
else
if _0xC5FA[plr.UserId] then _0xC5FA[plr.UserId].Enabled = false end
end
end
end
endlocal function _0xE5A2()
local _0x2D5D = {}
for _, _0x13AB in ipairs(_0x9687:GetPlayers()) do
if _0x13AB ~= _0x7281 and _0x13AB.Character then
local _0xE7A2 = _0x13AB.Character:FindFirstChildOfClass("Humanoid")
if _0xE7A2 and _0xE7A2.Health > 0 then table.insert(_0x2D5D, _0x13AB) end
end
end
return _0x2D5D
end
local _0x3142, _0x255C, _0xCD0D
local _0xD577
local function _0x273C(plr)
if not plr or not plr.Character then return nil end
local _0xE7A2 = plr.Character:FindFirstChildOfClass("Humanoid")
if not _0xE7A2 then return nil end
if _0xE7A2.SeatPart then return _0xE7A2.SeatPart end
return _0xE7A2
end
local function _0x039B()
if _0x4809.overlay then return end
local _0x1587 = Instance.new("ScreenGui")
_0x1587.Name ="LexterSpectate"_0x1587.ResetOnSpawn = false
_0x1587.IgnoreGuiInset = true
_0x1587.DisplayOrder = 10
_0x1587.Parent = _0x395E
local _0x094D = Instance.new("Frame", _0x1587)
_0x094D.Name ="MainFrame"_0x094D.Size = UDim2.new(0, 420, 0, 175)
_0x094D.Position = UDim2.new(0.5, -210, 0, 20)
_0x094D.BackgroundColor3 = Color3.fromRGB(11, 9, 20)
_0x094D.BackgroundTransparency = 0.25
_0x094D.BorderSizePixel = 0
Instance.new("UICorner", _0x094D).CornerRadius = UDim.new(0, 16)
local _0xE184 = Instance.new("UIStroke", _0x094D)
_0xE184.Color = Color3.fromRGB(168, 85, 247)
_0xE184.Thickness = 2
_0xE184.Transparency = 0.45
local _0x6D2E = Instance.new("Frame", _0x094D)
_0x6D2E.Size = UDim2.new(0, 5, 1, -20)
_0x6D2E.Position = UDim2.new(0, 8, 0, 10)
_0x6D2E.BackgroundColor3 = Color3.fromRGB(168, 85, 247)
_0x6D2E.BorderSizePixel = 0
Instance.new("UICorner", _0x6D2E).CornerRadius = UDim.new(1, 0)
local _0x7E7C = Instance.new("Frame", _0x094D)
_0x7E7C.Size = UDim2.new(0, 52, 0, 52)
_0x7E7C.Position = UDim2.new(0, 24, 0, 14)
_0x7E7C.BackgroundColor3 = Color3.fromRGB(168, 85, 247)
_0x7E7C.BorderSizePixel = 0
Instance.new("UICorner", _0x7E7C).CornerRadius = UDim.new(0, 12)
local _0xAA66 = Instance.new("TextLabel", _0x7E7C)
_0xAA66.Size = UDim2.new(1, 0, 1, 0)
_0xAA66.BackgroundTransparency = 1
_0xAA66.Font = Enum.Font.GothamBlack
_0xAA66.TextSize = 22
_0xAA66.TextColor3 = Color3.fromRGB(255, 255, 255)
_0xAA66.Text ="SP"local _0xA273 = Instance.new("TextLabel", _0x094D)
_0xA273.Name ="TargetName"_0xA273.Size = UDim2.new(1, -100, 0, 22)
_0xA273.Position = UDim2.new(0, 86, 0, 14)
_0xA273.BackgroundTransparency = 1
_0xA273.Font = Enum.Font.GothamBlack
_0xA273.TextSize = 16
_0xA273.TextColor3 = Color3.fromRGB(255, 255, 255)
_0xA273.Text ="Especteando..."_0xA273.TextXAlignment = Enum.TextXAlignment.Left
local _0x6F39 = Instance.new("TextLabel", _0x094D)
_0x6F39.Name ="SubText"_0x6F39.Size = UDim2.new(1, -100, 0, 16)
_0x6F39.Position = UDim2.new(0, 86, 0, 40)
_0x6F39.BackgroundTransparency = 1
_0x6F39.Font = Enum.Font.GothamMedium
_0x6F39.TextSize = 11
_0x6F39.TextColor3 = Color3.fromRGB(180, 165, 210)
_0x6F39.Text ="HP --/--"_0x6F39.TextXAlignment = Enum.TextXAlignment.Left
local _0x2788 = Instance.new("Frame", _0x094D)
_0x2788.Size = UDim2.new(1, -110, 0, 6)
_0x2788.Position = UDim2.new(0, 86, 0, 60)
_0x2788.BackgroundColor3 = Color3.fromRGB(40, 30, 60)
_0x2788.BorderSizePixel = 0
_0x2788.Parent = _0x094D
Instance.new("UICorner", _0x2788).CornerRadius = UDim.new(1, 0)
local _0xCACC = Instance.new("Frame", _0x2788)
_0xCACC.Size = UDim2.new(1, 0, 1, 0)
_0xCACC.BackgroundColor3 = Color3.fromRGB(90, 240, 150)
_0xCACC.BorderSizePixel = 0
_0xCACC.Name ="HPFill"_0xCACC.Parent = _0x2788
Instance.new("UICorner", _0xCACC).CornerRadius = UDim.new(1, 0)
local _0x8EFE = Instance.new("TextLabel", _0x094D)
_0x8EFE.Size = UDim2.new(1, -40, 0, 14)
_0x8EFE.Position = UDim2.new(0, 24, 0, 78)
_0x8EFE.BackgroundTransparency = 1
_0x8EFE.Font = Enum.Font.GothamBold
_0x8EFE.TextSize = 9
_0x8EFE.TextColor3 = Color3.fromRGB(150, 130, 200)
_0x8EFE.Text ="[Q] Anterior   [E] Siguiente   [V] Salir"_0x8EFE.TextXAlignment = Enum.TextXAlignment.Left
local _0x6DAB = Instance.new("Frame", _0x094D)
_0x6DAB.Size = UDim2.new(1, -40, 0, 1)
_0x6DAB.Position = UDim2.new(0, 20, 0, 98)
_0x6DAB.BackgroundColor3 = Color3.fromRGB(60, 45, 90)
_0x6DAB.BorderSizePixel = 0
_0x6DAB.BackgroundTransparency = 0.4
local _0x4860 = Instance.new("TextLabel", _0x094D)
_0x4860.Size = UDim2.new(0, 100, 0, 14)
_0x4860.Position = UDim2.new(0, 24, 0, 100)
_0x4860.BackgroundTransparency = 1
_0x4860.Font = Enum.Font.GothamBold
_0x4860.TextSize = 9
_0x4860.TextColor3 = Color3.fromRGB(255, 200, 60)
_0x4860.Text ="INVENTARIO"_0x4860.TextXAlignment = Enum.TextXAlignment.Left
local _0x3D95 = Instance.new("Frame", _0x094D)
_0x3D95.Name ="WeaponsRow"_0x3D95.Size = UDim2.new(1, -40, 0, 58)
_0x3D95.Position = UDim2.new(0, 20, 0, 114)
_0x3D95.BackgroundTransparency = 1
local _0x5772 = Instance.new("UIListLayout", _0x3D95)
_0x5772.FillDirection = Enum.FillDirection.Horizontal
_0x5772.Padding = UDim.new(0, 8)
_0x5772.SortOrder = Enum.SortOrder.LayoutOrder
_0x4809.overlay = _0x1587
end
local function _0x1088()
if _0x4809.overlay then pcall(function() _0x4809.overlay:Destroy() end); _0x4809.overlay = nil end
end
local function _0x4350()
if not _0x4809.overlay or not _0x4809.target then return end
local _0x5CD1 = _0x4809.overlay:FindFirstChild("TargetName", true)
local _0x6F39 = _0x4809.overlay:FindFirstChild("SubText", true)
local _0xCACC = _0x4809.overlay:FindFirstChild("HPFill", true)
local _0x5092 = _0x4809.target
if _0x5CD1 then
local _0xA50A =""if _0x4809.showFriends then _0xA50A = _0x132B(_0x5092) and"[AMIGO] "or"[ENEMIGO] "end
_0x5CD1.Text = _0xA50A .. (_0x5092.DisplayName or _0x5092.Name)
if _0x4809.showFriends then _0x5CD1.TextColor3 = _0x132B(_0x5092) and Color3.fromRGB(255, 215, 100) or Color3.fromRGB(255, 255, 255)
else _0x5CD1.TextColor3 = Color3.fromRGB(255, 255, 255) end
end
if _0x5092.Character then
local _0xE7A2 = _0x5092.Character:FindFirstChildOfClass("Humanoid")
if _0xE7A2 then
local _0xE878 = math.clamp(_0xE7A2.Health / _0xE7A2.MaxHealth, 0, 1)
if _0x6F39 then _0x6F39.Text ="HP ".. math.floor(_0xE7A2.Health) .." / ".. math.floor(_0xE7A2.MaxHealth) .."  •  ".. math.floor(_0xE878 * 100) .."%"end
if _0xCACC then
_0xCACC.Size = UDim2.new(_0xE878, 0, 1, 0)
if _0xE878 > 0.5 then _0xCACC.BackgroundColor3 = Color3.fromRGB(90, 240, 150)
elseif _0xE878 > 0.25 then _0xCACC.BackgroundColor3 = Color3.fromRGB(255, 200, 60)
else _0xCACC.BackgroundColor3 = Color3.fromRGB(255, 90, 90) end
end
end
end
end
local function _0x6DA6()
if not _0x4809.overlay or not _0x4809.target then return end
local _0x9B07 = _0x4809.overlay:FindFirstChild("WeaponsRow", true)
if not _0x9B07 then return end
for _, _0x9102 in ipairs(_0x9B07:GetChildren()) do if _0x9102:IsA("Frame") then _0x9102:Destroy() end end
local _0x449B = {}
local _0x5092 = _0x4809.target
local _0xFAD8 = _0x5092.Character
local _0x557D = _0x5092:FindFirstChild("Backpack")
if _0xFAD8 then
for _, _0x4E38 in ipairs(_0xFAD8:GetChildren()) doif _0x4E38:IsA("Tool") and not _0x5513(_0x4E38) then table.insert(_0x449B, {_0x4E38=_0x4E38, equipped=true}); if #_0x449B >= 6 then break end end
end
end
if _0x557D and #_0x449B < 6 then
for _, _0x4E38 in ipairs(_0x557D:GetChildren()) do
if _0x4E38:IsA("Tool") and not _0x5513(_0x4E38) then table.insert(_0x449B, {_0x4E38=_0x4E38, equipped=false}); if #_0x449B >= 6 then break end end
end
end
for _0x84BC, _0x37F9 in ipairs(_0x449B) do
local _0x4E38 = _0x37F9.tool
local _0x3E71 = _0x9E07(_0x4E38)
local _0xFD8D = _0xD704[_0x3E71] or _0xD704.Unknown
local _0x810A = _0xB522(_0x4E38)
local _0x3555 = Instance.new("Frame", _0x9B07)
_0x3555.Size = UDim2.new(0, 54, 0, 54)
_0x3555.BackgroundColor3 = Color3.fromRGB(16, 12, 26)
_0x3555.BackgroundTransparency = 0.25
_0x3555.BorderSizePixel = 0
_0x3555.LayoutOrder = _0x84BC
Instance.new("UICorner", _0x3555).CornerRadius = UDim.new(0, 8)
local _0x2D6C = Instance.new("UIStroke", _0x3555)
_0x2D6C.Color = _0xFD8D
_0x2D6C.Thickness = 1.5
_0x2D6C.Transparency = 0.35
local _0xB223 = Instance.new("Frame", _0x3555)
_0xB223.Size = UDim2.new(1, -12, 0, 2)
_0xB223.Position = UDim2.new(0, 6, 0, 4)
_0xB223.BackgroundColor3 = _0xFD8D
_0xB223.BorderSizePixel = 0
Instance.new("UICorner", _0xB223).CornerRadius = UDim.new(1, 0)
local _0x5CD1 = Instance.new("TextLabel", _0x3555)
_0x5CD1.Size = UDim2.new(1, -6, 1, -14)
_0x5CD1.Position = UDim2.new(0, 3, 0, 12)
_0x5CD1.BackgroundTransparency = 1
_0x5CD1.Font = Enum.Font.GothamBold
_0x5CD1.TextSize = 9
_0x5CD1.TextColor3 = _0xFD8D
_0x5CD1.Text = _0x810A
_0x5CD1.TextWrapped = true
_0x5CD1.TextXAlignment = Enum.TextXAlignment.Center
_0x5CD1.TextYAlignment = Enum.TextYAlignment.Center
if _0x37F9.equipped then
local _0xC263 = Instance.new("Frame", _0x3555)
_0xC263.Size = UDim2.new(0, 5, 0, 5)
_0xC263.Position = UDim2.new(1, -9, 0, 5)
_0xC263.BackgroundColor3 = Color3.fromRGB(80, 220, 130)
_0xC263.BorderSizePixel = 0
_0xC263.ZIndex = 3
Instance.new("UICorner", _0xC263).CornerRadius = UDim.new(1, 0)
end
end
end
local _0xDF31 = false
function _0x255C()
if _0xDF31 then return end
_0xDF31 = true
task.delay(0.6, function() _0xDF31 = false end)
_0x4809.token = _0x4809.token + 1
local _0x86D7 = _0x4809.active
_0x4809.active = false
_0x4809.target = nil
pcall(function()
if _0xF1C3 then _0x7281.CameraMaxZoomDistance = _0xF1C3 end
if _0xFFF7 then _0x7281.CameraMinZoomDistance = _0xFFF7 end
if _0x4809.originalCamMode then
_0x7281.CameraMode = _0x4809.originalCamMode
else
_0x7281.CameraMode = Enum.CameraMode.Classic
end
end)
local function _0xCFDA()
local _0x0725 = _0xD192()
if not _0x0725 then return end
local _0x9ECB = _0x7281.Character
local _0xBDBB = _0x9ECB and _0x9ECB:FindFirstChildOfClass("Humanoid")
local _0x154B = _0xBDBB
if _0xBDBB and _0xBDBB.SeatPart then _0x154B = _0xBDBB.SeatPart end
if not _0x154B then _0x154B = _0x9ECB or _0x7281 end
pcall(function()
_0x0725.CameraSubject = _0x154B
_0x0725.CameraType = Enum.CameraType.Custom
_0x0725.FieldOfView = _0x4809.originalFOV or 70
end)
end
_0xCFDA()task.spawn(function()
for _0x84BC = 1, 100 do
task.wait(0.1)
if _0x8EFC then break end
local _0x0725 = _0xD192()
if not _0x0725 then break end
local _0x9ECB = _0x7281.Character
local _0xBDBB = _0x9ECB and _0x9ECB:FindFirstChildOfClass("Humanoid")
local _0xCECE = _0xBDBB
if _0xBDBB and _0xBDBB.SeatPart then _0xCECE = _0xBDBB.SeatPart end
if _0x0725.CameraType ~= Enum.CameraType.Custom or (_0xCECE and _0x0725.CameraSubject ~= _0xCECE) then
_0xCFDA()
endpcall(function()
if _0x7281.CameraMode ~= Enum.CameraMode.Classic and _0x7281.CameraMode ~= Enum.CameraMode.LockFirstPerson thenend
end)
end
end)
_0x4809.originalCamType = nil
_0x4809.originalFOV = nil
_0x4809.originalCamMode = nil
_0x1088()
if _0x4809.listGUI then pcall(function() _0x4809.listGUI:Destroy() end); _0x4809.listGUI = nil end
_0x79AB()
if _0xAE08.SpectateToggle then pcall(function() _0xAE08.SpectateToggle:SetValue(false) end) end
if _0x86D7 then _0x55F2("Espectador","Saliste del modo espectador", 2,"X", Color3.fromRGB(200, 100, 100)) end
end
function _0x3142(plr)
if not plr or not plr.Character then return end
local _0xE7A2 = plr.Character:FindFirstChildOfClass("Humanoid")
if not _0xE7A2 then return endif not _0x4809.active then
local _0x0725 = _0xD192()
if _0x0725 then
_0x4809.originalCamType = _0x0725.CameraType
_0x4809.originalFOV = _0x0725.FieldOfView
end
_0x4809.originalCamMode = _0x7281.CameraMode
pcall(function() _0x7281.CameraMode = Enum.CameraMode.Classic end)
_0x4809.active = true
end
_0x4809.token = _0x4809.token + 1
_0x4809.target = plr
local _0x0725 = _0xD192()
if _0x0725 then
local _0x154B = _0x273C(plr)
if _0x154B then
pcall(function()
_0x0725.CameraSubject = _0x154B
_0x0725.CameraType = Enum.CameraType.Custom
_0x0725.FieldOfView = _0x9BAD.SpectateFOV or 70
end)
end
end
_0x79AB()
_0x039B()
_0x4350()
_0x6DA6()
end
function _0xCD0D(dir)
local _0x2D5D = _0xE5A2()
if #_0x2D5D == 0 then _0x255C(); return end
_0x4809.targetIndex = 1
for _0x84BC, _0x13AB in ipairs(_0x2D5D) do
if _0x13AB == _0x4809.target then _0x4809.targetIndex = _0x84BC; break end
end
_0x4809.targetIndex = _0x4809.targetIndex + dir
if _0x4809.targetIndex > #_0x2D5D then _0x4809.targetIndex = 1 end
if _0x4809.targetIndex < 1 then _0x4809.targetIndex = #_0x2D5D end
_0x3142(_0x2D5D[_0x4809.targetIndex])
end
_0x4841(_0xE9E5.InputBegan, function(input, gp)
if _0x8EFC then return end
if gp then return end
if not _0x4809.active then return end
if input.KeyCode == Enum.KeyCode.Q then _0xCD0D(-1)
elseif input.KeyCode == Enum.KeyCode.E then _0xCD0D(1)
elseif input.KeyCode == Enum.KeyCode.V then _0x255C() end
end)
task.spawn(function()
while not _0x8EFC do
task.wait(0.15)
pcall(function()
if _0x4809.active then
_0x7281.CameraMode = Enum.CameraMode.Classic
elseif _0xF1C3 and _0xFFF7 then
if _0x7281.CameraMaxZoomDistance ~= _0xF1C3 then
_0x7281.CameraMaxZoomDistance = _0xF1C3
_0x7281.CameraMinZoomDistance = _0xFFF7
end
end
end)
if _0x4809.active then
local _0x5092 = _0x4809.target
if _0x5092 and _0x5092.Parent and _0x5092.Character then
local _0x0725 = _0xD192()
if _0x0725 then
local _0xF961 = _0x273C(_0x5092)
if _0xF961 and _0x0725.CameraSubject ~= _0xF961 then
pcall(function()
_0x0725.CameraSubject = _0xF961
_0x0725.CameraType = Enum.CameraType.Custom
end)
end
end
end
end
end
end)
_0xD577 = function()
if _0x4809.listGUI then pcall(function() _0x4809.listGUI:Destroy() end); _0x4809.listGUI = nil end
local _0x3E1B = Instance.new("ScreenGui")
_0x3E1B.Name ="LexterSpecList"_0x3E1B.ResetOnSpawn = false
_0x3E1B.IgnoreGuiInset = true
_0x3E1B.DisplayOrder = 11
_0x3E1B.Parent = _0x395E
local _0x094D = Instance.new("Frame", _0x3E1B)
_0x094D.Name ="MainFrame"_0x094D.Size = UDim2.new(0, 310, 0, 460)
_0x094D.Position = UDim2.new(0, 20, 0.5, -230)
_0x094D.BackgroundColor3 = Color3.fromRGB(11, 9, 20)
_0x094D.BackgroundTransparency = 0.2
_0x094D.BorderSizePixel = 0
_0x094D.Active = true
_0x094D.Draggable = true
Instance.new("UICorner", _0x094D).CornerRadius = UDim.new(0, 16)
local _0xE184 = Instance.new("UIStroke", _0x094D)
_0xE184.Color = Color3.fromRGB(168, 85, 247)
_0xE184.Thickness = 2
_0xE184.Transparency = 0.45
local _0xF2DE = Instance.new("Frame", _0x094D)
_0xF2DE.Size = UDim2.new(1, 0, 0, 50)
_0xF2DE.BackgroundColor3 = Color3.fromRGB(24, 16, 42)
_0xF2DE.BackgroundTransparency = 0.2
_0xF2DE.BorderSizePixel = 0
Instance.new("UICorner", _0xF2DE).CornerRadius = UDim.new(0, 16)
local _0xBCB7 = Instance.new("Frame", _0xF2DE)
_0xBCB7.Size = UDim2.new(1, 0, 0, 14)
_0xBCB7.Position = UDim2.new(0, 0, 1, -14)
_0xBCB7.BackgroundColor3 = Color3.fromRGB(24, 16, 42)
_0xBCB7.BackgroundTransparency = 0.2
_0xBCB7.BorderSizePixel = 0
local _0x96C3 = Instance.new("TextLabel", _0xF2DE)
_0x96C3.Size = UDim2.new(1, -60, 1, 0)
_0x96C3.Position = UDim2.new(0, 18, 0, 0)
_0x96C3.BackgroundTransparency = 1
_0x96C3.Font = Enum.Font.GothamBlack
_0x96C3.TextSize = 15
_0x96C3.TextColor3 = Color3.fromRGB(255, 255, 255)
_0x96C3.Text ="JUGADORES"_0x96C3.TextXAlignment = Enum.TextXAlignment.Left
local _0x8EA6 = Instance.new("TextButton", _0xF2DE)
_0x8EA6.Size = UDim2.new(0, 28, 0, 28)
_0x8EA6.Position = UDim2.new(1, -36, 0.5, -14)
_0x8EA6.BackgroundColor3 = Color3.fromRGB(230, 70, 70)
_0x8EA6.BackgroundTransparency = 0.15
_0x8EA6.BorderSizePixel = 0
_0x8EA6.Font = Enum.Font.GothamBold
_0x8EA6.TextSize = 14
_0x8EA6.TextColor3 = Color3.fromRGB(255, 255, 255)
_0x8EA6.Text ="X"_0x8EA6.AutoButtonColor = false
Instance.new("UICorner", _0x8EA6).CornerRadius = UDim.new(0, 8)
_0x8EA6.MouseButton1Click:Connect(function()
if _0x4809.listGUI then _0x4809.listGUI:Destroy(); _0x4809.listGUI = nil end
end)
local _0x99BF = Instance.new("ScrollingFrame", _0x094D)
_0x99BF.Name ="Scroll"_0x99BF.Size = UDim2.new(1, -16, 1, -68)
_0x99BF.Position = UDim2.new(0, 8, 0, 58)
_0x99BF.BackgroundTransparency = 1
_0x99BF.BorderSizePixel = 0
_0x99BF.ScrollBarThickness = 5
_0x99BF.ScrollBarImageColor3 = Color3.fromRGB(168, 85, 247)
_0x99BF.CanvasSize = UDim2.new(0, 0, 0, 0)
_0x99BF.AutomaticCanvasSize = Enum.AutomaticSize.Y
local _0x5772 = Instance.new("UIListLayout", _0x99BF)
_0x5772.Padding = UDim.new(0, 8)
_0x5772.SortOrder = Enum.SortOrder.LayoutOrder
local function _0xA886()
if not _0x4809.listGUI then return end
for _, _0x9102 in ipairs(_0x99BF:GetChildren()) do if _0x9102:IsA("TextButton") then _0x9102:Destroy() end end
local _0xE882 = 0
for _, _0x13AB in ipairs(_0x9687:GetPlayers()) do
if _0x13AB ~= _0x7281 and _0x13AB.Character then
local _0xE7A2 = _0x13AB.Character:FindFirstChildOfClass("Humanoid")
if _0xE7A2 and _0xE7A2.Health > 0 then
_0xE882 = _0xE882 + 1
local _0x3CDA = (_0x13AB == _0x4809.target)
local _0xEBBB = _0x132B(_0x13AB)
local _0x5D35 = Instance.new("TextButton", _0x99BF)
_0x5D35.Size = UDim2.new(1, -8, 0, 62)
_0x5D35.BackgroundColor3 = _0x3CDA and Color3.fromRGB(50, 30, 90)
or (_0xEBBB and Color3.fromRGB(40, 34, 20) or Color3.fromRGB(20, 15, 32))
_0x5D35.BackgroundTransparency = 0.2
_0x5D35.BorderSizePixel = 0
_0x5D35.Text =""_0x5D35.AutoButtonColor = false
_0x5D35.LayoutOrder = _0xE882
Instance.new("UICorner", _0x5D35).CornerRadius = UDim.new(0, 10)
local _0x7384 = Instance.new("UIStroke", _0x5D35)
if _0x3CDA then _0x7384.Color = Color3.fromRGB(255, 200, 60); _0x7384.Thickness = 2; _0x7384.Transparency = 0
elseif _0xEBBB then _0x7384.Color = Color3.fromRGB(255, 200, 60); _0x7384.Thickness = 1.4; _0x7384.Transparency = 0.3
else _0x7384.Color = Color3.fromRGB(60, 45, 90); _0x7384.Thickness = 1; _0x7384.Transparency = 0.4 end
local _0x2C91 = Instance.new("Frame", _0x5D35)
_0x2C91.Size = UDim2.new(0, 44, 0, 44)
_0x2C91.Position = UDim2.new(0, 8, 0.5, -22)
_0x2C91.BackgroundColor3 = _0xEBBB and Color3.fromRGB(90, 55, 140) or Color3.fromRGB(40, 30, 60)
_0x2C91.BorderSizePixel = 0
Instance.new("UICorner", _0x2C91).CornerRadius = UDim.new(1, 0)
local _0xF4C4 = Instance.new("UIStroke", _0x2C91)
_0xF4C4.Color = _0x3CDA and Color3.fromRGB(255, 200, 60) or Color3.fromRGB(168, 85, 247)
_0xF4C4.Thickness = 2
_0xF4C4.Transparency = 0.2
local _0x1E34 = Instance.new("ImageLabel", _0x2C91)
_0x1E34.Size = UDim2.new(1, -4, 1, -4)
_0x1E34.Position = UDim2.new(0, 2, 0, 2)
_0x1E34.BackgroundTransparency = 1
_0x1E34.Image ="rbxassetid://0"Instance.new("UICorner", _0x1E34).CornerRadius = UDim.new(1, 0)
local _0xA08D = Instance.new("TextLabel", _0x2C91)
_0xA08D.Size = UDim2.new(1, 0, 1, 0)
_0xA08D.BackgroundTransparency = 1
_0xA08D.Font = Enum.Font.GothamBlack
_0xA08D.TextSize = 18
_0xA08D.TextColor3 = Color3.fromRGB(255, 255, 255)
_0xA08D.Text = string.upper(string.sub(_0x13AB.Name, 1, 1))
_0xA08D.ZIndex = 1
task.spawn(function()
local _0x17CE, _0x6C33 = pcall(function()
return _0x9687:GetUserThumbnailAsync(_0x13AB.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)
end)
if _0x17CE and _0x6C33 and _0x1E34.Parent then
_0x1E34.Image = _0x6C33
_0x1E34.ZIndex = 2
task.wait(0.1)
if _0x1E34.IsLoaded then _0xA08D.Visible = false
else
_0x1E34:GetPropertyChangedSignal("IsLoaded"):Connect(function()
if _0x1E34.IsLoaded then _0xA08D.Visible = false end
end)
end
end
end)
local _0x4C7D = Instance.new("TextLabel", _0x5D35)
_0x4C7D.Size = UDim2.new(1, -160, 0, 16)
_0x4C7D.Position = UDim2.new(0, 60, 0, 8)
_0x4C7D.BackgroundTransparency = 1
_0x4C7D.Font = Enum.Font.GothamBold
_0x4C7D.TextSize = 12
_0x4C7D.TextColor3 = _0x3CDA and Color3.fromRGB(255, 200, 60)
or (_0xEBBB and Color3.fromRGB(255, 215, 100) or Color3.fromRGB(245, 245, 255))
_0x4C7D.Text = _0x13AB.Name
_0x4C7D.TextXAlignment = Enum.TextXAlignment.Left
_0x4C7D.TextTruncate = Enum.TextTruncate.AtEnd
local _0x2276 = Instance.new("Frame", _0x5D35)
_0x2276.Size = UDim2.new(0, 120, 0, 5)
_0x2276.Position = UDim2.new(0, 60, 0, 28)
_0x2276.BackgroundColor3 = Color3.fromRGB(40, 30, 60)
_0x2276.BorderSizePixel = 0
Instance.new("UICorner", _0x2276).CornerRadius = UDim.new(1, 0)
local _0xCACC = Instance.new("Frame", _0x2276)
local _0xEEDD = math.clamp(_0xE7A2.Health / _0xE7A2.MaxHealth, 0, 1)
_0xCACC.Size = UDim2.new(_0xEEDD, 0, 1, 0)
if _0xEEDD > 0.5 then _0xCACC.BackgroundColor3 = Color3.fromRGB(90, 240, 150)
elseif _0xEEDD > 0.25 then _0xCACC.BackgroundColor3 = Color3.fromRGB(255, 200, 60)
else _0xCACC.BackgroundColor3 = Color3.fromRGB(255, 90, 90) end
_0xCACC.BorderSizePixel = 0
_0xCACC.Parent = _0x2276
Instance.new("UICorner", _0xCACC).CornerRadius = UDim.new(1, 0)
local _0x298E = Instance.new("TextLabel", _0x5D35)
_0x298E.Size = UDim2.new(0, 120, 0, 12)
_0x298E.Position = UDim2.new(0, 60, 0, 36)
_0x298E.BackgroundTransparency = 1
_0x298E.Font = Enum.Font.GothamBold
_0x298E.TextSize = 9
_0x298E.TextColor3 = Color3.fromRGB(200, 190, 230)
_0x298E.Text ="HP ".. math.floor(_0xE7A2.Health) .." / ".. math.floor(_0xE7A2.MaxHealth)
_0x298E.TextXAlignment = Enum.TextXAlignment.Left
if _0x3CDA then
local _0x3C4C = Instance.new("TextLabel", _0x5D35)
_0x3C4C.Size = UDim2.new(0, 60, 0, 14)
_0x3C4C.Position = UDim2.new(1, -70, 0, 8)
_0x3C4C.BackgroundTransparency = 1
_0x3C4C.Font = Enum.Font.GothamBlack
_0x3C4C.TextSize = 10
_0x3C4C.TextColor3 = Color3.fromRGB(255, 200, 60)
_0x3C4C.Text ="● VIENDO"end
_0x5D35.MouseButton1Click:Connect(function()
_0x3142(_0x13AB)
_0xA886()
end)
end
end
end
if _0xE882 == 0 then
local _0x4547 = Instance.new("TextLabel", _0x99BF)
_0x4547.Size = UDim2.new(1, 0, 0, 40)
_0x4547.BackgroundTransparency = 1
_0x4547.Font = Enum.Font.Gotham
_0x4547.TextSize = 10
_0x4547.TextColor3 = Color3.fromRGB(140, 130, 170)
_0x4547.Text ="No hay jugadores vivos"_0x4547.LayoutOrder = 999
end
end
_0xA886()
_0x4809.listGUI = _0x3E1B
local _0x1CA6 = _0x3E1B
task.spawn(function()
while _0x1CA6 and _0x1CA6.Parent and not _0x8EFC do
task.wait(1.5)
if _0x4809.listGUI ~= _0x1CA6 then break end
pcall(_0xA886)
end
end)
end
task.spawn(function()
while not _0x8EFC do
task.wait(0.4)
if _0x4809.active then
local _0x5092 = _0x4809.target
if not _0x5092 or not _0x5092.Parent or not _0x5092.Character then
if _0x4809.autoNext then _0xCD0D(1) else _0x255C() end
else
local _0xE7A2 = _0x5092.Character:FindFirstChildOfClass("Humanoid")
if not _0xE7A2 or _0xE7A2.Health <= 0 then
task.wait(0.5)
if _0x4809.autoNext then
local _0x2D5D = _0xE5A2()
if #_0x2D5D > 0 then _0xCD0D(1) else _0x255C() end
else _0x255C() end
else
_0x4350()
_0x6DA6()
end
end
end
end
end)
_0x4841(_0x7281.CharacterAdded, function()
task.defer(function() if _0x4809.active then _0x255C() end end)
end)local function _0x32BB()
if _0x590A then _0x590A.Enabled = not _0x590A.Enabled; return end
local _0x6A59 ="Todos"local _0x4A3F =""local function _0xCBCF(plr)
if plr == _0x7281 then return false end
if _0x4A3F ~=""and not string.find(string.lower(plr.Name), string.lower(_0x4A3F)) then return false end
local _0xEBBB = _0x132B(plr)
if _0x6A59 =="Amigos"and not _0xEBBB then return false end
if _0x6A59 =="Enemigos"and _0xEBBB then return false end
return true
end
pcall(function()
_0x590A = Instance.new("ScreenGui")
_0x590A.Name ="FriendListGUI"_0x590A.ResetOnSpawn = false
_0x590A.IgnoreGuiInset = true
_0x590A.DisplayOrder = 8
_0x590A.Parent = _0x395E
local _0x094D = Instance.new("Frame")
_0x094D.Size = UDim2.new(0, 400, 0, 520)
_0x094D.Position = UDim2.new(0.5, -200, 0.5, -260)
_0x094D.BackgroundColor3 = Color3.fromRGB(11, 9, 20)
_0x094D.BackgroundTransparency = 0.2
_0x094D.BorderSizePixel = 0
_0x094D.Active = true
_0x094D.Draggable = true
_0x094D.Parent = _0x590A
Instance.new("UICorner", _0x094D).CornerRadius = UDim.new(0, 18)
local _0x7B88 = Instance.new("UIGradient", _0x094D)
_0x7B88.Color = ColorSequence.new({
ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 18, 52)),
ColorSequenceKeypoint.new(1, Color3.fromRGB(8, 6, 16))
})
_0x7B88.Rotation = 135
local _0xCBF2 = Instance.new("UIStroke", _0x094D)
_0xCBF2.Color = Color3.fromRGB(168, 85, 247)
_0xCBF2.Thickness = 2
_0xCBF2.Transparency = 0.45
local _0xF2DE = Instance.new("Frame", _0x094D)
_0xF2DE.Size = UDim2.new(1, 0, 0, 62)
_0xF2DE.BackgroundColor3 = Color3.fromRGB(24, 16, 42)
_0xF2DE.BackgroundTransparency = 0.2
_0xF2DE.BorderSizePixel = 0
_0xF2DE.Parent = _0x094D
Instance.new("UICorner", _0xF2DE).CornerRadius = UDim.new(0, 18)
local _0x52E5 = Instance.new("Frame", _0xF2DE)
_0x52E5.Size = UDim2.new(1, 0, 0, 22)
_0x52E5.Position = UDim2.new(0, 0, 1, -22)
_0x52E5.BackgroundColor3 = Color3.fromRGB(24, 16, 42)
_0x52E5.BackgroundTransparency = 0.2
_0x52E5.BorderSizePixel = 0
local _0x96C3 = Instance.new("TextLabel", _0xF2DE)
_0x96C3.Size = UDim2.new(1, -120, 0, 22)
_0x96C3.Position = UDim2.new(0, 22, 0, 12)
_0x96C3.BackgroundTransparency = 1
_0x96C3.Font = Enum.Font.GothamBlack
_0x96C3.TextSize = 17
_0x96C3.TextColor3 = Color3.fromRGB(255, 255, 255)
_0x96C3.Text ="FRIEND LIST"_0x96C3.TextXAlignment = Enum.TextXAlignment.Left
local _0xD55D = Instance.new("TextLabel", _0xF2DE)
_0xD55D.Size = UDim2.new(1, -120, 0, 16)
_0xD55D.Position = UDim2.new(0, 22, 0, 36)
_0xD55D.BackgroundTransparency = 1
_0xD55D.Font = Enum.Font.GothamMedium
_0xD55D.TextSize = 10
_0xD55D.TextColor3 = Color3.fromRGB(180, 165, 210)
_0xD55D.Text ="0 / 0 visibles"_0xD55D.TextXAlignment = Enum.TextXAlignment.Left
local _0x8EA6 = Instance.new("TextButton", _0xF2DE)
_0x8EA6.Size = UDim2.new(0, 32, 0, 32)
_0x8EA6.Position = UDim2.new(1, -40, 0.5, -16)
_0x8EA6.BackgroundColor3 = Color3.fromRGB(230, 70, 70)
_0x8EA6.BackgroundTransparency = 0.15
_0x8EA6.BorderSizePixel = 0
_0x8EA6.Font = Enum.Font.GothamBold
_0x8EA6.TextSize = 14
_0x8EA6.TextColor3 = Color3.fromRGB(255, 255, 255)
_0x8EA6.Text ="X"_0x8EA6.AutoButtonColor = false
Instance.new("UICorner", _0x8EA6).CornerRadius = UDim.new(0, 8)
_0x8EA6.MouseButton1Click:Connect(function()
_0x590A:Destroy()
_0x590A = nil
_0xF23E = nil
end)
local _0xB94A = Instance.new("Frame", _0x094D)
_0xB94A.Size = UDim2.new(1, -24, 0, 34)
_0xB94A.Position = UDim2.new(0, 12, 0, 74)
_0xB94A.BackgroundColor3 = Color3.fromRGB(18, 13, 30)
_0xB94A.BackgroundTransparency = 0.2
_0xB94A.BorderSizePixel = 0
Instance.new("UICorner", _0xB94A).CornerRadius = UDim.new(0, 9)
local _0x6156 = Instance.new("TextBox", _0xB94A)
_0x6156.Size = UDim2.new(1, -20, 1, 0)
_0x6156.Position = UDim2.new(0, 10, 0, 0)
_0x6156.BackgroundTransparency = 1
_0x6156.Font = Enum.Font.GothamMedium
_0x6156.TextSize = 11
_0x6156.TextColor3 = Color3.fromRGB(240, 235, 250)
_0x6156.PlaceholderText ="Buscar..."_0x6156.PlaceholderColor3 = Color3.fromRGB(90, 80, 120)
_0x6156.Text =""_0x6156.ClearTextOnFocus = false
_0x6156.TextXAlignment = Enum.TextXAlignment.Left
local _0x71C9 = Instance.new("Frame", _0x094D)
_0x71C9.Size = UDim2.new(1, -24, 0, 28)
_0x71C9.Position = UDim2.new(0, 12, 0, 114)
_0x71C9.BackgroundTransparency = 1
local _0xE912 = {}
local function _0xB5A3(text, order)
local _0x6DBC = Instance.new("TextButton", _0x71C9)
_0x6DBC.Size = UDim2.new(0.333, -4, 1, 0)
_0x6DBC.Position = UDim2.new(0.333 * order, 0, 0, 0)
_0x6DBC.BackgroundColor3 = Color3.fromRGB(18, 13, 30)
_0x6DBC.BorderSizePixel = 0
_0x6DBC.Font = Enum.Font.GothamBold
_0x6DBC.TextSize = 11
_0x6DBC.TextColor3 = Color3.fromRGB(180, 165, 220)
_0x6DBC.Text = text
_0x6DBC.AutoButtonColor = false
Instance.new("UICorner", _0x6DBC).CornerRadius = UDim.new(0, 8)
_0xE912[text] = _0x6DBC
return _0x6DBC
end
_0xB5A3("Todos", 0)
_0xB5A3("Amigos", 1)
_0xB5A3("Enemigos", 2)
local function _0x4B96(_0x6DBC)
_0x6A59 = _0x6DBC
for name, _0x5D35 in pairs(_0xE912) do
if name == _0x6DBC then
_0x5D35.BackgroundColor3 = Color3.fromRGB(168, 85, 247)
_0x5D35.TextColor3 = Color3.fromRGB(255, 255, 255)
else
_0x5D35.BackgroundColor3 = Color3.fromRGB(18, 13, 30)
_0x5D35.TextColor3 = Color3.fromRGB(180, 165, 220)
end
end
if _0xF23E then pcall(_0xF23E) end
end
_0xE912["Todos"].MouseButton1Click:Connect(function() _0x4B96("Todos") end)
_0xE912["Amigos"].MouseButton1Click:Connect(function() _0x4B96("Amigos") end)
_0xE912["Enemigos"].MouseButton1Click:Connect(function() _0x4B96("Enemigos") end)
local _0x2C98 = Instance.new("Frame", _0x094D)
_0x2C98.Size = UDim2.new(1, -24, 0, 30)
_0x2C98.Position = UDim2.new(0, 12, 0, 150)
_0x2C98.BackgroundTransparency = 1
local _0x4A08 = Instance.new("TextButton", _0x2C98)
_0x4A08.Size = UDim2.new(0.5, -3, 1, 0)
_0x4A08.Position = UDim2.new(0, 0, 0, 0)
_0x4A08.BackgroundColor3 = Color3.fromRGB(60, 140, 220)
_0x4A08.BorderSizePixel = 0
_0x4A08.Font = Enum.Font.GothamBold
_0x4A08.TextSize = 11
_0x4A08.TextColor3 = Color3.fromRGB(255, 255, 255)
_0x4A08.Text ="MOSTRAR TODOS"_0x4A08.AutoButtonColor = false
Instance.new("UICorner", _0x4A08).CornerRadius = UDim.new(0, 8)
local _0xE56A = Instance.new("TextButton", _0x2C98)
_0xE56A.Size = UDim2.new(0.5, -3, 1, 0)
_0xE56A.Position = UDim2.new(0.5, 3, 0, 0)
_0xE56A.BackgroundColor3 = Color3.fromRGB(180, 60, 60)
_0xE56A.BorderSizePixel = 0
_0xE56A.Font = Enum.Font.GothamBold
_0xE56A.TextSize = 11
_0xE56A.TextColor3 = Color3.fromRGB(255, 255, 255)
_0xE56A.Text ="OCULTAR TODOS"_0xE56A.AutoButtonColor = false
Instance.new("UICorner", _0xE56A).CornerRadius = UDim.new(0, 8)
local _0x99BF = Instance.new("ScrollingFrame", _0x094D)
_0x99BF.Size = UDim2.new(1, -16, 1, -204)
_0x99BF.Position = UDim2.new(0, 8, 0, 188)
_0x99BF.BackgroundTransparency = 1
_0x99BF.BorderSizePixel = 0
_0x99BF.ScrollBarThickness = 5
_0x99BF.ScrollBarImageColor3 = Color3.fromRGB(168, 85, 247)
_0x99BF.CanvasSize = UDim2.new(0, 0, 0, 0)
_0x99BF.AutomaticCanvasSize = Enum.AutomaticSize.Y
local _0x9452 = Instance.new("UIListLayout", _0x99BF)
_0x9452.Padding = UDim.new(0, 6)
_0x9452.SortOrder = Enum.SortOrder.LayoutOrder
local function _0x683E()
if not _0x590A or not _0x590A.Parent then return end
for _, _0x9102 in ipairs(_0x99BF:GetChildren()) do
if (_0x9102:IsA("TextButton") or _0x9102:IsA("Frame")) and not _0x9102:IsA("UIListLayout") then _0x9102:Destroy() end
end
local _0x1030, _0x0A94 = 0, 0
local _0x5CFE = 0
for _, plr in ipairs(_0x9687:GetPlayers()) do
if plr ~= _0x7281 then
_0x1030 = _0x1030 + 1
local _0xEBBB = _0x132B(plr)
local _0xF43D = _0x195D[plr.UserId]
if _0xF43D == nil then _0xF43D = not _0xEBBB end
if _0xF43D then _0x0A94 = _0x0A94 + 1 end
if _0xCBCF(plr) then
_0x5CFE = _0x5CFE + 1
local _0x9B07 = Instance.new("TextButton")
_0x9B07.Size = UDim2.new(1, -8, 0, 54)
_0x9B07.BackgroundColor3 = _0xF43D and Color3.fromRGB(22, 32, 28) or Color3.fromRGB(32, 18, 20)
_0x9B07.BackgroundTransparency = 0.2
_0x9B07.BorderSizePixel = 0
_0x9B07.Text =""_0x9B07.AutoButtonColor = false
_0x9B07.Parent = _0x99BF
Instance.new("UICorner", _0x9B07).CornerRadius = UDim.new(0, 10)
local _0xD747 = Instance.new("UIStroke", _0x9B07)
_0xD747.Color = _0xF43D and Color3.fromRGB(80, 200, 130) or Color3.fromRGB(200, 80, 80)
_0xD747.Thickness = 1.3
_0xD747.Transparency = 0.3
local _0xFB23 = Instance.new("Frame", _0x9B07)
_0xFB23.Size = UDim2.new(0, 4, 1, -16)
_0xFB23.Position = UDim2.new(0, 6, 0, 8)
_0xFB23.BackgroundColor3 = _0xF43D and Color3.fromRGB(80, 220, 130) or Color3.fromRGB(220, 80, 80)
_0xFB23.BorderSizePixel = 0
Instance.new("UICorner", _0xFB23).CornerRadius = UDim.new(1, 0)
local _0x2C91 = Instance.new("Frame", _0x9B07)
_0x2C91.Size = UDim2.new(0, 38, 0, 38)
_0x2C91.Position = UDim2.new(0, 16, 0.5, -19)
_0x2C91.BackgroundColor3 = _0xEBBB and Color3.fromRGB(90, 55, 140) or Color3.fromRGB(80, 35, 45)
_0x2C91.BorderSizePixel = 0
Instance.new("UICorner", _0x2C91).CornerRadius = UDim.new(1, 0)
local _0xF4C4 = Instance.new("UIStroke", _0x2C91)
_0xF4C4.Color = _0xEBBB and Color3.fromRGB(255, 200, 60) or Color3.fromRGB(200, 80, 80)
_0xF4C4.Thickness = 1.5
_0xF4C4.Transparency = 0.3
local _0x1E34 = Instance.new("ImageLabel", _0x2C91)
_0x1E34.Size = UDim2.new(1, -4, 1, -4)
_0x1E34.Position = UDim2.new(0, 2, 0, 2)
_0x1E34.BackgroundTransparency = 1
_0x1E34.Image ="rbxassetid://0"Instance.new("UICorner", _0x1E34).CornerRadius = UDim.new(1, 0)
local _0xA08D = Instance.new("TextLabel", _0x2C91)
_0xA08D.Size = UDim2.new(1, 0, 1, 0)
_0xA08D.BackgroundTransparency = 1
_0xA08D.Font = Enum.Font.GothamBlack
_0xA08D.TextSize = 15
_0xA08D.TextColor3 = Color3.fromRGB(255, 255, 255)
_0xA08D.Text = string.upper(string.sub(plr.Name, 1, 1))
_0xA08D.ZIndex = 1
task.spawn(function()
local _0x17CE, _0x6C33 = pcall(function()
return _0x9687:GetUserThumbnailAsync(plr.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)
end)
if _0x17CE and _0x6C33 and _0x1E34.Parent then
_0x1E34.Image = _0x6C33
_0x1E34.ZIndex = 2
task.wait(0.1)
if _0x1E34.IsLoaded then _0xA08D.Visible = false
else
_0x1E34:GetPropertyChangedSignal("IsLoaded"):Connect(function()
if _0x1E34.IsLoaded then _0xA08D.Visible = false end
end)
end
end
end)
local _0x833E = Instance.new("TextLabel", _0x9B07)
_0x833E.Size = UDim2.new(1, -160, 0, 16)
_0x833E.Position = UDim2.new(0, 62, 0, 9)
_0x833E.BackgroundTransparency = 1
_0x833E.Font = Enum.Font.GothamBold
_0x833E.TextSize = 12
_0x833E.TextColor3 = _0xEBBB and Color3.fromRGB(255, 220, 100) or Color3.fromRGB(240, 240, 250)
_0x833E.Text = plr.Name
_0x833E.TextXAlignment = Enum.TextXAlignment.Left
_0x833E.TextTruncate = Enum.TextTruncate.AtEnd
local _0x769D = Instance.new("TextLabel", _0x9B07)
_0x769D.Size = UDim2.new(1, -160, 0, 12)
_0x769D.Position = UDim2.new(0, 62, 0, 26)
_0x769D.BackgroundTransparency = 1
_0x769D.Font = Enum.Font.GothamMedium
_0x769D.TextSize = 9
_0x769D.TextColor3 = Color3.fromRGB(150, 145, 180)
_0x769D.Text = _0xF43D and"Visible"or"Oculto"_0x769D.TextXAlignment = Enum.TextXAlignment.Left
local _0x4A91 = Instance.new("Frame", _0x9B07)
_0x4A91.Size = UDim2.new(0, 60, 0, 20)
_0x4A91.Position = UDim2.new(1, -70, 0.5, -20)
_0x4A91.BackgroundColor3 = _0xEBBB and Color3.fromRGB(255, 200, 60) or Color3.fromRGB(200, 80, 80)
_0x4A91.BackgroundTransparency = 0.78
_0x4A91.BorderSizePixel = 0
Instance.new("UICorner", _0x4A91).CornerRadius = UDim.new(0, 5)
local _0x6238 = Instance.new("TextLabel", _0x4A91)
_0x6238.Size = UDim2.new(1, 0, 1, 0)
_0x6238.BackgroundTransparency = 1
_0x6238.Font = Enum.Font.GothamBold
_0x6238.TextSize = 9
_0x6238.TextColor3 = _0xEBBB and Color3.fromRGB(255, 220, 100) or Color3.fromRGB(255, 130, 130)
_0x6238.Text = _0xEBBB and"AMIGO"or"ENEMIGO"local _0x6A0B = Instance.new("Frame", _0x9B07)
_0x6A0B.Size = UDim2.new(0, 24, 0, 24)
_0x6A0B.Position = UDim2.new(1, -30, 0.5, 6)
_0x6A0B.BackgroundColor3 = _0xF43D and Color3.fromRGB(80, 220, 130) or Color3.fromRGB(220, 80, 80)
_0x6A0B.BackgroundTransparency = 0.15
_0x6A0B.BorderSizePixel = 0
Instance.new("UICorner", _0x6A0B).CornerRadius = UDim.new(1, 0)
local _0x1737 = Instance.new("TextLabel", _0x6A0B)
_0x1737.Size = UDim2.new(1, 0, 1, 0)
_0x1737.BackgroundTransparency = 1
_0x1737.Font = Enum.Font.GothamBold
_0x1737.TextSize = 13
_0x1737.TextColor3 = Color3.fromRGB(255, 255, 255)
_0x1737.Text = _0xF43D and"V"or"X"_0x9B07.MouseButton1Click:Connect(function()
local _0x1FDC = _0x195D[plr.UserId]
if _0x1FDC == nil then _0x1FDC = not _0xEBBB end
local _0x03BF = not _0x1FDC
_0x8D0C(plr, _0x03BF)
_0x9B07.BackgroundColor3 = _0x03BF and Color3.fromRGB(22, 32, 28) or Color3.fromRGB(32, 18, 20)
_0xD747.Color = _0x03BF and Color3.fromRGB(80, 200, 130) or Color3.fromRGB(200, 80, 80)
_0xFB23.BackgroundColor3 = _0x03BF and Color3.fromRGB(80, 220, 130) or Color3.fromRGB(220, 80, 80)
_0x6A0B.BackgroundColor3 = _0x03BF and Color3.fromRGB(80, 220, 130) or Color3.fromRGB(220, 80, 80)
_0x1737.Text = _0x03BF and"V"or"X"_0x769D.Text = _0x03BF and"Visible"or"Oculto"end)
end
end
end
_0xD55D.Text = _0x0A94 .." / ".. _0x1030 .." visibles  •  mostrando ".. _0x5CFE
if _0x5CFE == 0 then
local _0x4547 = Instance.new("TextLabel", _0x99BF)
_0x4547.Size = UDim2.new(1, 0, 0, 50)
_0x4547.BackgroundTransparency = 1
_0x4547.Font = Enum.Font.GothamMedium
_0x4547.TextSize = 11
_0x4547.TextColor3 = Color3.fromRGB(130, 120, 160)
_0x4547.Text ="No hay jugadores para mostrar"_0x4547.LayoutOrder = 999
end
end
_0xF23E = _0x683E
_0x6156:GetPropertyChangedSignal("Text"):Connect(function()
_0x4A3F = _0x6156.Text
if _0xF23E then pcall(_0xF23E) end
end)
_0x4A08.MouseButton1Click:Connect(function()
for _, _0x13AB in ipairs(_0x9687:GetPlayers()) do if _0x13AB ~= _0x7281 then _0x195D[_0x13AB.UserId] = true end end
_0x683E()
end)
_0xE56A.MouseButton1Click:Connect(function()
for _, _0x13AB in ipairs(_0x9687:GetPlayers()) do if _0x13AB ~= _0x7281 then _0x195D[_0x13AB.UserId] = false end end
_0x683E()
end)
_0x4B96("Todos")
_0x683E()
end)
end
task.spawn(function()
while not _0x8EFC do
task.wait(3)
if _0xF23E and _0x590A and _0x590A.Enabled then pcall(_0xF23E) end
end
end)local function _0xA56E()
if _0x4E0F then _0x4E0F.Enabled = not _0x4E0F.Enabled; return end
pcall(function()
_0x4E0F = Instance.new("ScreenGui")
_0x4E0F.Name ="LexterProfile"_0x4E0F.ResetOnSpawn = false
_0x4E0F.IgnoreGuiInset = true
_0x4E0F.DisplayOrder = 9
_0x4E0F.Parent = _0x395E
local _0x094D = Instance.new("Frame")
_0x094D.Size = UDim2.new(0, 380, 0, 580)
_0x094D.Position = UDim2.new(0.5, -190, 0.5, -290)
_0x094D.BackgroundColor3 = Color3.fromRGB(11, 9, 20)
_0x094D.BackgroundTransparency = 0.15
_0x094D.BorderSizePixel = 0
_0x094D.Active = true
_0x094D.Draggable = true
_0x094D.Parent = _0x4E0F
Instance.new("UICorner", _0x094D).CornerRadius = UDim.new(0, 18)
local _0x7B88 = Instance.new("UIGradient", _0x094D)
_0x7B88.Color = ColorSequence.new({
ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 18, 52)),
ColorSequenceKeypoint.new(0.5, Color3.fromRGB(14, 10, 26)),
ColorSequenceKeypoint.new(1, Color3.fromRGB(8, 6, 16))
})
_0x7B88.Rotation = 135
local _0xE6D8 = Instance.new("UIStroke", _0x094D)
_0xE6D8.Color = Color3.fromRGB(168, 85, 247)
_0xE6D8.Thickness = 2
_0xE6D8.Transparency = 0.45
local _0x98E4 = Instance.new("UIStroke", _0x094D)
_0x98E4.Color = Color3.fromRGB(255, 200, 60)
_0x98E4.Thickness = 1
_0x98E4.Transparency = 0.55
local _0xF2DE = Instance.new("Frame", _0x094D)
_0xF2DE.Size = UDim2.new(1, 0, 0, 56)
_0xF2DE.BackgroundColor3 = Color3.fromRGB(24, 16, 42)
_0xF2DE.BackgroundTransparency = 0.2
_0xF2DE.BorderSizePixel = 0
_0xF2DE.Parent = _0x094D
Instance.new("UICorner", _0xF2DE).CornerRadius = UDim.new(0, 18)
local _0x52E5 = Instance.new("Frame", _0xF2DE)
_0x52E5.Size = UDim2.new(1, 0, 0, 20)
_0x52E5.Position = UDim2.new(0, 0, 1, -20)
_0x52E5.BackgroundColor3 = Color3.fromRGB(24, 16, 42)
_0x52E5.BackgroundTransparency = 0.2
_0x52E5.BorderSizePixel = 0
local _0x1A16 = Instance.new("Frame", _0x094D)
_0x1A16.Size = UDim2.new(1, -24, 0, 2)
_0x1A16.Position = UDim2.new(0, 12, 0, 56)
_0x1A16.BorderSizePixel = 0
local _0x7408 = Instance.new("UIGradient", _0x1A16)
_0x7408.Color = ColorSequence.new({
ColorSequenceKeypoint.new(0, Color3.fromRGB(168, 85, 247)),
ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 200, 60)),
ColorSequenceKeypoint.new(1, Color3.fromRGB(168, 85, 247))
})
local _0x96C3 = Instance.new("TextLabel", _0xF2DE)
_0x96C3.Size = UDim2.new(1, -150, 1, 0)
_0x96C3.Position = UDim2.new(0, 18, 0, 0)
_0x96C3.BackgroundTransparency = 1
_0x96C3.Font = Enum.Font.GothamBlack
_0x96C3.TextSize = 17
_0x96C3.TextColor3 = Color3.fromRGB(255, 255, 255)
_0x96C3.Text ="MI PERFIL"_0x96C3.TextXAlignment = Enum.TextXAlignment.Left
local _0x426F = Instance.new("UIGradient", _0x96C3)
_0x426F.Color = ColorSequence.new({
ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 150, 255)),
ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)),
ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 200, 60))
})
local _0x4A91 = Instance.new("Frame", _0xF2DE)
_0x4A91.Size = UDim2.new(0, 72, 0, 20)
_0x4A91.Position = UDim2.new(1, -108, 0.5, -10)
_0x4A91.BackgroundColor3 = Color3.fromRGB(255, 200, 60)
_0x4A91.BackgroundTransparency = 0.82
_0x4A91.BorderSizePixel = 0
Instance.new("UICorner", _0x4A91).CornerRadius = UDim.new(0, 5)
local _0xF94B = Instance.new("UIStroke", _0x4A91)
_0xF94B.Color = Color3.fromRGB(255, 200, 60)
_0xF94B.Thickness = 1
local _0x6238 = Instance.new("TextLabel", _0x4A91)
_0x6238.Size = UDim2.new(1, 0, 1, 0)
_0x6238.BackgroundTransparency = 1
_0x6238.Font = Enum.Font.GothamBold
_0x6238.TextSize = 10
_0x6238.TextColor3 = Color3.fromRGB(255, 220, 100)
_0x6238.Text ="★ PREMIUM"local _0x8EA6 = Instance.new("TextButton", _0xF2DE)
_0x8EA6.Size = UDim2.new(0, 32, 0, 32)
_0x8EA6.Position = UDim2.new(1, -40, 0.5, -16)
_0x8EA6.BackgroundColor3 = Color3.fromRGB(230, 70, 70)
_0x8EA6.BackgroundTransparency = 0.15
_0x8EA6.BorderSizePixel = 0
_0x8EA6.Font = Enum.Font.GothamBold
_0x8EA6.TextSize = 14
_0x8EA6.TextColor3 = Color3.fromRGB(255, 255, 255)
_0x8EA6.Text ="X"_0x8EA6.AutoButtonColor = false
Instance.new("UICorner", _0x8EA6).CornerRadius = UDim.new(0, 8)
_0x8EA6.MouseButton1Click:Connect(function()
if _0x4E0F then _0x4E0F:Destroy(); _0x4E0F = nil end
end)
local _0x855F = Instance.new("Frame", _0x094D)
_0x855F.Size = UDim2.new(0, 120, 0, 120)
_0x855F.Position = UDim2.new(0.5, -60, 0, 76)
_0x855F.BackgroundColor3 = Color3.fromRGB(42, 26, 68)
_0x855F.BorderSizePixel = 0
_0x855F.Parent = _0x094D
Instance.new("UICorner", _0x855F).CornerRadius = UDim.new(1, 0)
local _0x4324 = Instance.new("UIStroke", _0x855F)
_0x4324.Color = Color3.fromRGB(255, 200, 60)
_0x4324.Thickness = 3
_0x4324.Transparency = 0
local _0x0649 = Instance.new("UIStroke", _0x855F)
_0x0649.Color = Color3.fromRGB(168, 85, 247)
_0x0649.Thickness = 5
_0x0649.Transparency = 0.7
local _0x1E34 = Instance.new("ImageLabel", _0x855F)
_0x1E34.Size = UDim2.new(1, -12, 1, -12)
_0x1E34.Position = UDim2.new(0, 6, 0, 6)
_0x1E34.BackgroundTransparency = 1
_0x1E34.Image =""_0x1E34.Parent = _0x855F
Instance.new("UICorner", _0x1E34).CornerRadius = UDim.new(1, 0)
task.spawn(function()
local _0x17CE, _0x6C33 = pcall(function()
return _0x9687:GetUserThumbnailAsync(_0x7281.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
end)
if _0x17CE and _0x6C33 and _0x1E34.Parent then _0x1E34.Image = _0x6C33 end
end)
task.spawn(function()
for _ = 1, 3 do
if not _0x0649.Parent then break end
_0x669B:Create(_0x0649, TweenInfo.new(1), {Transparency = 0.95, Thickness = 9}):Play()
task.wait(1)
if not _0x0649.Parent then break end
_0x669B:Create(_0x0649, TweenInfo.new(1), {Transparency = 0.5, Thickness = 5}):Play()
task.wait(1)
end
end)
local _0x5CD1 = Instance.new("TextLabel", _0x094D)
_0x5CD1.Size = UDim2.new(1, -30, 0, 24)
_0x5CD1.Position = UDim2.new(0, 15, 0, 204)
_0x5CD1.BackgroundTransparency = 1
_0x5CD1.Font = Enum.Font.GothamBlack
_0x5CD1.TextSize = 18
_0x5CD1.TextColor3 = Color3.fromRGB(255, 255, 255)
_0x5CD1.Text = _0x7281.DisplayName or _0x7281.Name
_0x5CD1.TextXAlignment = Enum.TextXAlignment.Center
local _0x4C7F = Instance.new("UIGradient", _0x5CD1)
_0x4C7F.Color = ColorSequence.new({
ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 230, 150)),
ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 200, 60))
})
local _0xE607 = Instance.new("TextLabel", _0x094D)
_0xE607.Size = UDim2.new(1, -30, 0, 16)
_0xE607.Position = UDim2.new(0, 15, 0, 228)
_0xE607.BackgroundTransparency = 1
_0xE607.Font = Enum.Font.GothamMedium
_0xE607.TextSize = 11
_0xE607.TextColor3 = Color3.fromRGB(180, 160, 220)
_0xE607.Text ="@".. _0x7281.Name .."  •  ID: ".. _0x7281.UserId
_0xE607.TextXAlignment = Enum.TextXAlignment.Center
local _0xEF0C = _G.LexterLabs_KeyData
local _0xAE16 = 0
if _0xEF0C and _0xEF0C.hours_left then _0xAE16 = tonumber(_0xEF0C.hours_left) or 0 end
local _0x1B81 = Instance.new("Frame", _0x094D)
_0x1B81.Size = UDim2.new(1, -40, 0, 8)
_0x1B81.Position = UDim2.new(0, 20, 0, 258)
_0x1B81.BackgroundColor3 = Color3.fromRGB(40, 30, 60)
_0x1B81.BorderSizePixel = 0
Instance.new("UICorner", _0x1B81).CornerRadius = UDim.new(1, 0)
local _0x0CB9 = Instance.new("Frame", _0x1B81)
local _0x9418 = math.clamp(_0xAE16 / 100, 0, 1)
_0x0CB9.Size = UDim2.new(_0x9418, 0, 1, 0)
_0x0CB9.BackgroundColor3 = Color3.fromRGB(168, 85, 247)
_0x0CB9.BorderSizePixel = 0
Instance.new("UICorner", _0x0CB9).CornerRadius = UDim.new(1, 0)
local _0x0EC3 = Instance.new("UIGradient", _0x0CB9)
_0x0EC3.Color = ColorSequence.new({
ColorSequenceKeypoint.new(0, Color3.fromRGB(168, 85, 247)),
ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 200, 60))
})
local _0x3F64 = Instance.new("TextLabel", _0x094D)
_0x3F64.Size = UDim2.new(1, -40, 0, 14)
_0x3F64.Position = UDim2.new(0, 20, 0, 270)
_0x3F64.BackgroundTransparency = 1
_0x3F64.Font = Enum.Font.GothamBold
_0x3F64.TextSize = 10
_0x3F64.TextColor3 = Color3.fromRGB(180, 165, 220)
_0x3F64.Text ="Nivel  ".. string.format("%.0f", _0xAE16) .." / 100 horas"_0x3F64.TextXAlignment = Enum.TextXAlignment.Left
local function _0x3196(yPos, iconText, _0xDBD6, value, _0xD63A)
local _0x9B07 = Instance.new("Frame", _0x094D)
_0x9B07.Size = UDim2.new(1, -40, 0, 42)
_0x9B07.Position = UDim2.new(0, 20, 0, yPos)
_0x9B07.BackgroundColor3 = Color3.fromRGB(18, 13, 30)
_0x9B07.BackgroundTransparency = 0.2
_0x9B07.BorderSizePixel = 0
_0x9B07.Parent = _0x094D
Instance.new("UICorner", _0x9B07).CornerRadius = UDim.new(0, 9)
local _0xAFC3 = Instance.new("UIGradient", _0x9B07)
_0xAFC3.Color = ColorSequence.new({
ColorSequenceKeypoint.new(0, Color3.fromRGB(26, 17, 44)),
ColorSequenceKeypoint.new(1, Color3.fromRGB(15, 10, 26))
})
_0xAFC3.Rotation = 45
local _0x1B77 = Instance.new("UIStroke", _0x9B07)
_0x1B77.Color = _0xD63A or Color3.fromRGB(60, 45, 90)
_0x1B77.Thickness = 1
_0x1B77.Transparency = 0.5
local _0x6D2E = Instance.new("Frame", _0x9B07)
_0x6D2E.Size = UDim2.new(0, 3, 1, -16)
_0x6D2E.Position = UDim2.new(0, 6, 0, 8)
_0x6D2E.BackgroundColor3 = _0xD63A or Color3.fromRGB(168, 85, 247)
_0x6D2E.BorderSizePixel = 0
Instance.new("UICorner", _0x6D2E).CornerRadius = UDim.new(1, 0)
local _0xAA66 = Instance.new("TextLabel", _0x9B07)
_0xAA66.Size = UDim2.new(0, 36, 1, 0)
_0xAA66.Position = UDim2.new(0, 14, 0, 0)
_0xAA66.BackgroundTransparency = 1
_0xAA66.Font = Enum.Font.GothamBold
_0xAA66.TextSize = 13
_0xAA66.TextColor3 = _0xD63A or Color3.fromRGB(200, 180, 255)
_0xAA66.Text = iconText
local _0xF277 = Instance.new("TextLabel", _0x9B07)
_0xF277.Size = UDim2.new(0.5, -40, 1, 0)
_0xF277.Position = UDim2.new(0, 54, 0, 0)
_0xF277.BackgroundTransparency = 1
_0xF277.Font = Enum.Font.GothamMedium
_0xF277.TextSize = 11
_0xF277.TextColor3 = Color3.fromRGB(170, 155, 200)
_0xF277.Text = _0xDBD6
_0xF277.TextXAlignment = Enum.TextXAlignment.Left
local _0xF551 = Instance.new("TextLabel", _0x9B07)
_0xF551.Size = UDim2.new(0.5, -12, 1, 0)
_0xF551.Position = UDim2.new(0.5, 0, 0, 0)
_0xF551.BackgroundTransparency = 1
_0xF551.Font = Enum.Font.GothamBold
_0xF551.TextSize = 12
_0xF551.TextColor3 = Color3.fromRGB(255, 255, 255)
_0xF551.Text = value
_0xF551.TextXAlignment = Enum.TextXAlignment.Right
end
local _0x4D25 ="N/A"if _0xEF0C and _0xEF0C.expires_at then
local _0xEA79 = tostring(_0xEF0C.expires_at)
_0xEA79 = string.sub(_0xEA79, 1, 19)
_0xEA79 = string.gsub(_0xEA79,"T"," ")
_0x4D25 = _0xEA79
end
local _0x461C = string.format("%.1f", _0xAE16) .." h"local _0x1140 = string.sub(tostring(_G.LexterLabs_HWID or"?"), 1, 12) .."..."local _0x3D3F = string.sub(tostring(_G.LexterLabs_Key or"?"), 1, 8) .."..."local _0xE420 = tostring(_0x7281.AccountAge or"?") .." dias"_0x3196(294,"H","Horas restantes", _0x461C, Color3.fromRGB(80, 220, 130))
_0x3196(342,"E","Expira", _0x4D25, Color3.fromRGB(200, 150, 255))
_0x3196(390,"ID","HWID", _0x1140, Color3.fromRGB(180, 180, 220))
_0x3196(438,"C","Cuenta", _0xE420, Color3.fromRGB(255, 200, 60))
_0x3196(486,"K","Key", _0x3D3F, Color3.fromRGB(100, 200, 255))
local _0x919C = Instance.new("TextButton", _0x094D)
_0x919C.Size = UDim2.new(1, -40, 0, 32)
_0x919C.Position = UDim2.new(0, 20, 0, 536)
_0x919C.BackgroundColor3 = Color3.fromRGB(168, 85, 247)
_0x919C.BorderSizePixel = 0
_0x919C.Font = Enum.Font.GothamBold
_0x919C.TextSize = 12
_0x919C.TextColor3 = Color3.fromRGB(255, 255, 255)
_0x919C.Text ="COPIAR KEY"_0x919C.AutoButtonColor = false
Instance.new("UICorner", _0x919C).CornerRadius = UDim.new(0, 8)
local _0x8E93 = Instance.new("UIGradient", _0x919C)
_0x8E93.Color = ColorSequence.new({
ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 140, 255)),
ColorSequenceKeypoint.new(1, Color3.fromRGB(168, 85, 247))
})
_0x8E93.Rotation = 45
_0x919C.MouseButton1Click:Connect(function()
if setclipboard then
pcall(setclipboard, _G.LexterLabs_Key or"")
_0x919C.Text ="✓ COPIADA"task.wait(1.2)
_0x919C.Text ="COPIAR KEY"end
end)
end)
end
local _0x6934 = _0xEE2A.GlobalShadows
local _0xC63E = _0xEE2A.ShadowSoftness
local _0x60DD = _0xEE2A.FogEnd
local _0xC801 = _0xEE2A.FogStart
local _0xCC2C = nil
pcall(function() _0xCC2C = settings().Rendering.QualityLevel end)
local _0x3841 = {}
for _, _0x3157 in ipairs(_0xEE2A:GetChildren()) do
if _0x3157:IsA("PostEffect") then table.insert(_0x3841, {effect = _0x3157, enabled = _0x3157.Enabled}) end
end
local function _0x4D77()
if _0x0D17 then return end
_0x0D17 = true
pcall(function()
_0xEE2A.GlobalShadows = false
_0xEE2A.ShadowSoftness = 0
for _, _0x3157 in ipairs(_0xEE2A:GetChildren()) do
if _0x3157:IsA("PostEffect") then _0x3157.Enabled = false end
end
if workspace:FindFirstChildOfClass("Terrain") then
workspace:FindFirstChildOfClass("Terrain").Decoration = false
end
pcall(function() settings().Rendering.QualityLevel = Enum.QualityLevel.Level08 end)
end)
_0x55F2("Optimizacion","Sombras y texturas aligeradas", 3,"!", Color3.fromRGB(255, 200, 0))
end
local function _0x7CA3()
if not _0x0D17 then _0x55F2("Info","No hay optimizacion activa", 2,"i", Color3.fromRGB(200,200,200)); return end
_0x0D17 = false
pcall(function()
_0xEE2A.GlobalShadows = _0x6934
_0xEE2A.ShadowSoftness = _0xC63E
_0xEE2A.FogEnd = _0x60DD
_0xEE2A.FogStart = _0xC801
if _0xCC2C then settings().Rendering.QualityLevel = _0xCC2C end
for _, _0x37F9 in ipairs(_0x3841) do
if _0x37F9.effect and _0x37F9.effect.Parent then _0x37F9.effect.Enabled = _0x37F9.enabled end
end
if workspace:FindFirstChildOfClass("Terrain") then
workspace:FindFirstChildOfClass("Terrain").Decoration = true
end
end)
_0x55F2("Graficos","Configuracion restaurada", 3,"R", Color3.fromRGB(100, 200, 255))
end
local _0xCB3B = {
AimRadius={min=20,max=500}, MaxDistance={min=50,max=20000},
Smoothness={min=1,max=100}, LockDuration={min=0,max=3},
AimOffsetY={min=-5,max=5}, ESPDistance={min=50,max=20000},
SkeletonSmoothness={min=0.1,max=1}, InvDistance={min=100,max=20000},
SpectateFOV={min=30,max=120},
AimbotRotationShots={min=1,max=20},
AimbotFireRate={min=1,max=30},
}
local function _0xEB20()
local _0x110A = {_0x7681=_0x7681, _0x9BAD=_0x9BAD, _0x146B=_0x146B}
local _0x7229 = pcall(function() writefile(_0x0A5E, _0xD21A:JSONEncode(_0x110A)) end)
if _0x7229 then _0x55F2("Config","Guardada", 2,"S", Color3.fromRGB(100, 255, 100))
else _0x55F2("Error","No se pudo guardar", 3,"!", Color3.fromRGB(255,100,100)) end
end
local function _0x8073()
local _0x7229, _0x37F9 = pcall(function() return readfile(_0x0A5E) end)
if not _0x7229 then _0x55F2("Config","No hay config", 2,"!", Color3.fromRGB(255,200,0)); return end
local _0x2A7F, _0x110A = pcall(function() return _0xD21A:JSONDecode(_0x37F9) end)
if not _0x2A7F then _0x55F2("Error","Config corrupta", 3,"!", Color3.fromRGB(255,100,100)); return end
if _0x110A.ToggleState then for k, _0x3157 in pairs(_0x110A.ToggleState) do if type(_0x3157) =="boolean"and _0x7681[k] ~= nil then _0x7681[k] = _0x3157 end end end
if _0x110A.SliderValues then for k, _0x3157 in pairs(_0x110A.SliderValues) do if type(_0x3157) =="number"and _0xCB3B[k] then _0x9BAD[k] = math.clamp(_0x3157, _0xCB3B[k].min, _0xCB3B[k].max) end end end
if _0x110A.AimbotMode and (_0x110A.AimbotMode =="Head"or _0x110A.AimbotMode =="Body") then _0x146B = _0x110A.AimbotMode end
for key, component in pairs(_0xAE08) do
pcall(function()
if key =="AimbotToggle"then component:SetValue(_0x7681.AimbotEnabled)
elseif key =="AimbotMode"then component:SetValue(_0x146B)
elseif key =="FOVToggle"then component:SetValue(_0x7681.ShowFOV)
elseif key =="FOVSlider"then component:SetValue(_0x9BAD.AimRadius)
elseif key =="DistanceSlider"then component:SetValue(_0x9BAD.MaxDistance)
elseif key =="SmoothSlider"then component:SetValue(_0x9BAD.Smoothness)
elseif key =="ESPDistanceSlider"then component:SetValue(_0x9BAD.ESPDistance)
elseif key =="ChamsToggle"then component:SetValue(_0x7681.Chams)
elseif key =="NameToggle"then component:SetValue(_0x7681.NameESP)
elseif key =="HealthToggle"then component:SetValue(_0x7681.HealthBar)
elseif key =="SkeletonToggle"then component:SetValue(_0x7681.Skeleton)
elseif key =="SkeletonSmoothSlider"then component:SetValue(_0x9BAD.SkeletonSmoothness)
elseif key =="BoxToggle"then component:SetValue(_0x7681.Box)
elseif key =="InvViewerToggle"then component:SetValue(_0x7681.InventoryViewer)
elseif key =="InvChamsToggle"then component:SetValue(_0x7681.InvChams)
elseif key =="WeaponWarningsToggle"then component:SetValue(_0x7681.WeaponWarnings)
elseif key =="SoundAlertsToggle"then component:SetValue(_0x7681.SoundAlerts)
elseif key =="InvDistanceSlider"then component:SetValue(_0x9BAD.InvDistance)
elseif key =="AimbotRotationToggle"then component:SetValue(_0x7681.AimbotRotationEnabled)
elseif key =="AimbotRotationShots"then component:SetValue(_0x9BAD.AimbotRotationShots) end
end)
end
_0x79AB(); _0x1D7F(); _0x996F()
_0x55F2("Config","Cargada", 2,"L", Color3.fromRGB(100, 200, 255))
end
local function _0xBB5F()
if _0x8EFC then return end
_0x8EFC = true
_0x7300()
if _0x4809.active then
pcall(function()
local _0x9ECB = _0x7281.Character
local _0xBDBB = _0x9ECB and _0x9ECB:FindFirstChildOfClass("Humanoid")
local _0x154B = _0xBDBB
if _0xBDBB and _0xBDBB.SeatPart then _0x154B = _0xBDBB.SeatPart end
if not _0x154B then _0x154B = _0x9ECB or _0x7281 end
local _0x0725 = _0xD192()
if _0x0725 then _0x0725.CameraSubject = _0x154B; _0x0725.CameraType = Enum.CameraType.Custom end
end)
end
pcall(function()
if _0xF1C3 then _0x7281.CameraMaxZoomDistance = _0xF1C3 end
if _0xFFF7 then _0x7281.CameraMinZoomDistance = _0xFFF7 end
if _0x4809.originalCamMode then _0x7281.CameraMode = _0x4809.originalCamMode end
end)
_0x1088()
if _0x4809.listGUI then pcall(function() _0x4809.listGUI:Destroy() end) _0x4809.listGUI = nil end
for _, _0xF3EE in ipairs(_0xBB1D) do
if _0xF3EE then
if typeof(_0xF3EE) =="RBXScriptConnection"then pcall(function() _0xF3EE:Disconnect() end)
elseif type(_0xF3EE) =="table"and _0xF3EE.Disconnect then pcall(function() _0xF3EE:Disconnect() end) end
end
end
_0xBB1D = {}
if _0x0D17 then
pcall(function()
_0xEE2A.GlobalShadows = _0x6934
_0xEE2A.ShadowSoftness = _0xC63E
_0xEE2A.FogEnd = _0x60DD
_0xEE2A.FogStart = _0xC801
if _0xCC2C then settings().Rendering.QualityLevel = _0xCC2C end
for _, _0x37F9 in ipairs(_0x3841) do
if _0x37F9.effect and _0x37F9.effect.Parent then _0x37F9.effect.Enabled = _0x37F9.enabled end
end
if workspace:FindFirstChildOfClass("Terrain") then
workspace:FindFirstChildOfClass("Terrain").Decoration = true
end
end)
_0x0D17 = false
end
if _0xE97C then pcall(function() _0xE97C:Destroy() end) _0xE97C = nil end
if _0x24F4 then pcall(function() _0x24F4:Destroy() end) _0x24F4 = nil end
for userId in pairs(_0x4F4B) do if _0x4F4B[userId] then pcall(function() _0x4F4B[userId]:Destroy() end) end end
_0x4F4B = {}
for userId in pairs(_0x3D60) do
local _0x49F7 = _0x3D60[userId]
if _0x49F7 and _0x49F7.lines then for _, _0x0AE2 in pairs(_0x49F7.lines) do if _0x0AE2 then pcall(function() _0x0AE2:Remove() end) end end end
end
_0x3D60 = {}
for userId in pairs(_0xB570) do
local _0x49F7 = _0xB570[userId]
if _0x49F7 and _0x49F7.lines then for _, _0x0AE2 in pairs(_0x49F7.lines) do if _0x0AE2 then pcall(function() _0x0AE2:Remove() end) end end end
end
_0xB570 = {}
for userId in pairs(_0xC5FA) do if _0xC5FA[userId] then pcall(function() _0xC5FA[userId]:Destroy() end) end end
_0xC5FA = {}
for userId in pairs(_0x6F5E) do
local _0x9102 = _0x6F5E[userId]
if _0x9102 and _0x9102.gui then pcall(function() _0x9102.gui:Destroy() end) end
end
_0x6F5E = {}
if _0x590A then pcall(function() _0x590A:Destroy() end) _0x590A = nil end
if _0x4E0F then pcall(function() _0x4E0F:Destroy() end) _0x4E0F = nil end
for _, _0x6074 in ipairs(_0xE759) do pcall(function() _0x6074:Destroy() end) end
_0xE759 = {}
pcall(function()
for _, obj in ipairs(_0x395E:GetChildren()) do
if obj.Name =="FOVCircleGUI"or obj.Name =="FriendListGUI"or obj.Name =="LexterNotif"or obj.Name =="LexterLabsHub"or obj.Name =="LexterProfile"or obj.Name =="LexterSpectate"or obj.Name =="LexterSpecList"or obj.Name =="LexterWelcome"then
obj:Destroy()
end
end
end)
_0x7CE3 = {}; _0x1D9B = {}; _0x70FF = {}; _0xAE08 = {}
_0xCAD4 = {}; _0x30DC = {}
print("[LexterLabs] Destroy completo")
end
_G.LexterLabs_Destroy = _0xBB5F
local _0xE97C = nil
local _0xF81A = nil
pcall(function()
_0xE97C = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
end)
if _0xE97C then
local _0x17CE, _0xA416 = pcall(function()
_0xF81A = _0xE97C:CreateWindow({Title="LexterLabs Hub", SubTitle="v23.0.2", TabWidth=160, Size=UDim2.fromOffset(620,560), Acrylic=true, Theme="Darker", MinimizeKey=Enum.KeyCode.F})
end)
if not _0x17CE or not _0xF81A then warn("[LexterLabs] Error Fluent:", _0xA416); _0xF81A = nil end
end
if _0xF81A then
local _0xA6E0 = {
Aimbot = _0xF81A:AddTab({Title="Aimbot", Icon="target"}),
ESP = _0xF81A:AddTab({Title="ESP", Icon="eye"}),
Inventory = _0xF81A:AddTab({Title="Inventory", Icon="list"}),
Settings = _0xF81A:AddTab({Title="Settings", Icon="settings"})
}
local _0xB37B = _0xA6E0.Aimbot:AddSection("Control")
_0xAE08.AimbotToggle = _0xB37B:AddToggle("AimbotToggle", {Title="Enable Aimbot", Default=false, Callback=function(_0x3157) _0x7681.AimbotEnabled=_0x3157; _0x79AB() end})
_0xAE08.AimbotMode = _0xB37B:AddDropdown("AimbotMode", {Title="Aimbot Mode", Values={"Head","Body"}, Default="Head", Callback=function(_0x3157) _0x146B=_0x3157; if not _0x7681.AimbotRotationEnabled then _0x87CE = _0x3157 end end})
_0xAE08.FOVToggle = _0xB37B:AddToggle("FOVToggle", {Title="Show FOV", Default=true, Callback=function(_0x3157) _0x7681.ShowFOV=_0x3157; _0x79AB() end})
local _0xC710 = _0xA6E0.Aimbot:AddSection("Rotacion Head <-> Body")
_0xAE08.AimbotRotationToggle = _0xC710:AddToggle("AimbotRotationToggle", {
Title ="Activar Rotacion", Default = false,
Callback = function(_0x3157)
_0x7681.AimbotRotationEnabled = _0x3157
if _0x3157 then
_0x87CE = _0x146B
_0xE2BD = 0
_0x1D95 = nil
end
end
})
_0xAE08.AimbotRotationShots = _0xC710:AddSlider("AimbotRotationShots", {
Title ="Disparos por Rotacion", Min = 1, Max = 20, Default = 4, Rounding = 0,
Callback = function(_0x3157) _0x9BAD.AimbotRotationShots = _0x3157 end
})
local _0xF997 = _0xA6E0.Aimbot:AddSection("Ajustes")
_0xAE08.FOVSlider = _0xF997:AddSlider("FOVSlider", {Title="FOV Radius", Min=20, Max=500, Default=50, Rounding=0, Callback=function(_0x3157) _0x9BAD.AimRadius=_0x3157; _0x1D7F() end})
_0xAE08.DistanceSlider = _0xF997:AddSlider("DistanceSlider", {Title="Max Distance", Min=50, Max=20000, Default=200, Rounding=0, Callback=function(_0x3157) _0x9BAD.MaxDistance=_0x3157 end})
_0xAE08.SmoothSlider = _0xF997:AddSlider("SmoothSlider", {Title="Smoothness", Min=1, Max=100, Default=100, Rounding=0, Callback=function(_0x3157) _0x9BAD.Smoothness=_0x3157 end})
local _0x876B = _0xA6E0.ESP:AddSection("ESP")
_0xAE08.ESPDistanceSlider = _0x876B:AddSlider("ESPDistanceSlider", {Title="ESP Distance", Min=50, Max=20000, Default=5000, Rounding=0, Callback=function(_0x3157) _0x9BAD.ESPDistance=_0x3157 end})
_0xAE08.ChamsToggle = _0x876B:AddToggle("ChamsToggle", {Title="Chams", Default=false, Callback=function(_0x3157)
_0x7681.Chams=_0x3157
if _0x3157 and _0x7681.InvChams then _0x7681.InvChams=false; if _0xAE08.InvChamsToggle then pcall(function() _0xAE08.InvChamsToggle:SetValue(false) end) end end
_0x996F()
end})
_0xAE08.NameToggle = _0x876B:AddToggle("NameToggle", {Title="Name ESP", Default=false, Callback=function(_0x3157) _0x7681.NameESP=_0x3157 end})
_0xAE08.HealthToggle = _0x876B:AddToggle("HealthToggle", {Title="Health Bar", Default=false, Callback=function(_0x3157) _0x7681.HealthBar=_0x3157 end})
_0xAE08.SkeletonToggle = _0x876B:AddToggle("SkeletonToggle", {Title="Skeleton ESP", Default=false, Callback=function(_0x3157)
_0x7681.Skeleton=_0x3157
if not _0x3157 then for userId in pairs(_0x3D60) do _0xDE51(userId) end end
end})
_0xAE08.SkeletonSmoothSlider = _0x876B:AddSlider("SkeletonSmoothSlider", {Title="Skeleton Smoothness", Min=0.1, Max=1, Default=0.7, Rounding=2, Callback=function(_0x3157) _0x9BAD.SkeletonSmoothness=_0x3157 end})
_0xAE08.BoxToggle = _0x876B:AddToggle("BoxToggle", {Title="Box ESP", Default=false, Callback=function(_0x3157)
_0x7681.Box=_0x3157
if not _0x3157 then for userId in pairs(_0xB570) do _0x45F1(userId) end end
end})
local _0xAF1F = _0xA6E0.Inventory:AddSection("Inventory Viewer")
_0xAE08.InvViewerToggle = _0xAF1F:AddToggle("InvViewerToggle", {Title="Inventory Viewer", Default=false, Callback=function(_0x3157) _0x7681.InventoryViewer=_0x3157 end})
_0xAE08.InvChamsToggle = _0xAF1F:AddToggle("InvChamsToggle", {Title="Chams por Rareza", Default=false, Callback=function(_0x3157)
_0x7681.InvChams=_0x3157
if _0x3157 and _0x7681.Chams then _0x7681.Chams=false; if _0xAE08.ChamsToggle then pcall(function() _0xAE08.ChamsToggle:SetValue(false) end) end end
_0x7CE7()
end})
_0xAE08.WeaponWarningsToggle = _0xAF1F:AddToggle("WeaponWarningsToggle", {Title="Advertencia Armas Raras", Default=false, Callback=function(_0x3157) _0x7681.WeaponWarnings=_0x3157 end})
_0xAE08.SoundAlertsToggle = _0xAF1F:AddToggle("SoundAlertsToggle", {Title="Sonido de Alerta", Default=false, Callback=function(_0x3157) _0x7681.SoundAlerts=_0x3157 end})
_0xAE08.InvDistanceSlider = _0xAF1F:AddSlider("InvDistanceSlider", {Title="Distance", Min=100, Max=20000, Default=5000, Rounding=0, Callback=function(_0x3157) _0x9BAD.InvDistance=_0x3157 end})
local _0xF1DB = _0xA6E0.Inventory:AddSection("Espectador")
_0xAE08.SpectateToggle = _0xF1DB:AddToggle("SpectateToggle", {
Title ="Modo Espectador", Default = false,
Callback = function(_0x3157)
_0x7681.SpectateEnabled = _0x3157
if _0x3157 then
local _0x2D5D = _0xE5A2()
if #_0x2D5D > 0 then _0x3142(_0x2D5D[1]); _0xD577()
else
_0x55F2("Espectador","No hay jugadores vivos", 3,"!", Color3.fromRGB(255, 200, 0))
_0x7681.SpectateEnabled = false
if _0xAE08.SpectateToggle then pcall(function() _0xAE08.SpectateToggle:SetValue(false) end) end
end
else _0x255C() end
end,
})
local _0x643A = _0xA6E0.Settings:AddSection("System")
_0x643A:AddButton({Title="Mi Perfil", Callback=_0xA56E})
_0x643A:AddButton({Title="Toggle Friend List", Callback=_0x32BB})
_0x643A:AddButton({Title="Optimizar Juego", Callback=_0x4D77})
_0x643A:AddButton({Title="Restaurar Graficos", Callback=_0x7CA3})
_0x643A:AddButton({Title="Save Config", Callback=_0xEB20})
_0x643A:AddButton({Title="Load Config", Callback=_0x8073})
_0x643A:AddButton({Title="Destroy Script", Callback=_0xBB5F})
_0xE97C:Notify({Title="LexterLabs Hub", Content="v23.0.2 cargado", Duration=3})
end
task.wait(0.5)
_0xCE91()
_0x79AB()
_0x4841(_0xE9E5.InputBegan, function(input, gp)
if _0x8EFC then return end
if gp then return end
if input.UserInputType == Enum.UserInputType.MouseButton2 then _0xD194 = true end
end)
_0x4841(_0xE9E5.InputEnded, function(input)
if _0x8EFC then return end
if input.UserInputType == Enum.UserInputType.MouseButton2 then
_0xD194 = false
_0x7B09 = nil
_0x1767 = 0
end
end)
local _0xDF90 ="LexterLabs_AimBind_".. tostring(math.random(1, 999999))
pcall(function() _0x0C48:UnbindFromRenderStep(_0xDF90) end)
_0x0C48:BindToRenderStep(_0xDF90, Enum.RenderPriority.Camera.Value + 10, function()
if _0x8EFC then return end
if _0xD194 and _0x7681.AimbotEnabled then pcall(_0x7081) end
end)
_0x4841(_0x0C48.Heartbeat, function()
if _0x8EFC then return end
local _0x4063 = tick()
if _0x4063 - _0xF864 >= 0.05 then
_0xF864 = _0x4063
pcall(_0xC33C)
pcall(_0xE3C9)
end
end)
local _0xFCEA = 0
_0x4841(_0x0C48.Heartbeat, function()
if _0x8EFC then return end
local _0x4063 = tick()
if _0x4063 - _0xBA5E >= 0.1 then
_0xBA5E = _0x4063
if _0x7681.Chams then pcall(_0x996F) end
if _0x7681.InvChams then pcall(_0x7CE7) end
for _, plr in ipairs(_0x9687:GetPlayers()) do
if plr ~= _0x7281 then pcall(function() _0x0529(plr) end) end
end
end
if _0x4063 - _0xFCEA >= 0.2 then
_0xFCEA = _0x4063
pcall(_0x11F3)
end
end)
_0x4841(_0x7281.OnTeleport, function() _0xBB5F() end)
task.wait(0.2)
_0x6B0E()
_0x197B()
print("[LexterLabs] Hub v23.0.2 ejecutándose")
end
print("[LexterLabs] Llamando createLoaderUI")
_0xA7C1()
print("[LexterLabs] Loader creado")