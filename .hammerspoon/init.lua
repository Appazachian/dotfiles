hs.window.animationDuration = 0

-- Applicaiton Hotkeys
local appMan = {"cmd", "ctrl"}
-- Browser'
hs.hotkey.bind(appMan, "B", function()
    hs.application.launchOrFocus("Safari"):unhide()
end)

hs.hotkey.bind(appMan, "D", function()
    hs.application.launchOrFocus("Discord"):unhide()
end)

-- Settings
hs.hotkey.bind(appMan, ",", function()
    hs.application.launchOrFocus("Settings"):unhide()
end)

-- Terminal
hs.hotkey.bind(appMan, "T", function()
    hs.application.launchOrFocus("Ghostty"):unhide()
end)

-- Xcode
hs.hotkey.bind(appMan, "X", function()
    hs.application.launchOrFocus("Xcode"):unhide()
end)

-- Window Management
local winMan = {"alt", "ctrl"}
-- Left half
hs.hotkey.bind(winMan, "H", function()
    hs.window.focusedWindow():moveToUnit({0, 0, 0.5, 1})
end)

-- Right half
hs.hotkey.bind(winMan, "L", function()
    hs.window.focusedWindow():moveToUnit({0.5, 0, 0.5, 1})
end)

-- Top half
hs.hotkey.bind(winMan, "K", function()
    hs.window.focusedWindow():moveToUnit({0, 0, 1, 0.5})
end)

-- Bottom half
hs.hotkey.bind(winMan, "J", function()
    hs.window.focusedWindow():moveToUnit({0, 0.5, 1, 0.5})
end)

-- Fullscreen (not macOS fullscreen)
hs.hotkey.bind(winMan, "F", function()
    hs.window.focusedWindow():moveToUnit({0, 0, 1, 1})
end)
