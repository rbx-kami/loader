--[[     

███                                                                                             ███ 
███                                                                                             ███ 
███                                                                                   ████      ███ 
███                                                                                             ███ 
███                                                                                             ███ 
███             ███            ██████████         ███   █████████     █████████        ███      ███ 
███         ███████         ████████████████      ███████████████████████████████     ████      ███ 
███      ███████          █████          ████     ██████        ██████        ████    ████      ███ 
███   ███████            ████             ████    ████           ████          ███    ████      ███ 
██████████              ████              ████    ████           ███           ███    ████      ███ 
██████ ██████          ████              █████    ████           ███           ███    ████      ███ 
███       █████        ███             ███████    ████           ███           ███    ████          
███         █████      ████          █████ ███    ████           ███           ███    ████          
███           ██████    ████       █████   ███    ████           ███           ███    ████     █████
███              █████   █████████████     ███    ████           ███           ███    ████    ██████
███                ███     ████████        ███    ███            ███           ███     ███     ████ 
                                                                                             loader

]]

local Players = cloneref and cloneref(game:GetService("Players")) or game:GetService("Players")

local REPO = "https://gitea.com/Kami/loader"
local VERSION

local src = game:HttpGetAsync(
    string.format(
        "%*/releases/download/%*/source.luau",
        REPO,
        VERSION or "latest"
    )
)

if src then
    loadstring(src)()
else
    Players.LocalPlayer:Kick("Kami failed to load. Please try again")
end