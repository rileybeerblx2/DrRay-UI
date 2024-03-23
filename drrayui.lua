local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()

local window = DrRayLibrary:Load("DrRay", "Default")

local tab = DrRayLibrary.newTab("My Tab", "ImageIdHere")

tab.newButton("Button", "Prints Hello!", function()
    print('Hello!')
end)
  
tab.newToggle("Toggle", "Toggle! (prints the state)", true, function(toggleState)
    if toggleState then
        print("On")
    else
        print("Off")
    end
end)
  
tab.newInput("Input", "Prints your input.", function(text)
    print("Entered text: " .. text)
end)

tab.newDropdown("Dropdown", "Select one of these options!", {"water", "dog", "air", "bb", "airplane", "wohhho", "yeay", "delete"}, function(selectedOption)
    print(selectedOption)
end)

  tab.newKeybind("Input Key", "Press the key to start; it will be printed out.", function(key)
    print(key)
end)

tab.newSlider("Slider", "Epic slider", 1000, false, function(num)
    print(num)
end)

local mainColor = Color3.fromRGB(10, 30, 10) -- Customize as you wish; these are in RGB format. (mainColor applies to main colors like background, buttons, etc.)

local secondColor = Color3.fromRGB(50, 50, 10) -- Secondary Color; applies to Toggle when activated and slider background.

window:SetTheme(mainColor, secondColor)
