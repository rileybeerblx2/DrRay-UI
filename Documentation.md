# DrRay UI
This documentation is for DrRay UI Credit To Chillz

## Booting the DrRay UI Library
```lua
local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()
```




## Creating a DrRay UI Window
```lua
local window = DrRayLibrary:Load("DrRay", "Default")
```

## Creating a Tab
```lua
local tab = DrRayLibrary.newTab("My Tab", "ImageIdHere")
```

## Creating a Button
```lua
tab.newButton("Button", "Prints Hello!", function()
    print('Hello!')
end)
```

## Creating a Toggle
```lua
tab.newToggle("Toggle", "Toggle! (prints the state)", true, function(toggleState)
    if toggleState then
        print("On")
    else
        print("Off")
    end
end)
```

## Creating a Input Text / Textbox
```lua
tab.newInput("Input", "Prints your input.", function(text)
    print("Entered text: " .. text)
end)
```

## Creating a Dropdown
```lua
tab.newDropdown("Dropdown", "Select one of these options!", {"water", "dog", "air", "bb", "airplane", "wohhho", "yeay", "delete"}, function(selectedOption)
    print(selectedOption)
end)
```

## Creating a Keybind
```lua
tab.newKeybind("Input Key", "Press the key to start; it will be printed out.", function(key)
    print(key)
end)
```

## Creating a Slider
```lua
tab.newSlider("Slider", "Epic slider", 1000, false, function(num)
    print(num)
end)
```

## Toggle UI
```lua
window:Toggle()
```

## Open UI
```lua
window:Open()
```

## Close UI
```lua
window:Close()
```

## Hide UI
```lua
window:Hide()
```

## Unhide / Show UI
```lua
window:Show()
```

## Customize Theme
```lua
local mainColor = Color3.fromRGB(10, 30, 10) -- Customize as you wish; these are in RGB format. (mainColor applies to main colors like background, buttons, etc.)

local secondColor = Color3.fromRGB(50, 50, 10) -- Secondary Color; applies to Toggle when activated and slider background.

window:SetTheme(mainColor, secondColor)
```

## Want to add fully customizable UI?
```lua
for theme, color in pairs(themes) do
    Section:NewColorPicker(theme, "Change your "..theme, color, function(color3)
        Library:ChangeColor(theme, color3)
    end)
end
```
Add this code in your section. This will create color pickers.
Make sure you have added table with all the values of UI. then apply it to window. Like shown above.
