local password = "password"
local speaker = peripheral.find("speaker")


while true do
    term.clear()
    term.setCursorPos(1,1)
    write("Please enter password: ")
    local attempt = read("*")
    if attempt == password then
        speaker.playSound("mekanism:gui.digital_beep")        
        redstone.setOutput("left", true)
        redstone.setOutput("right", true)
        redstone.setOutput("back", true)
        print("Password correct!")
        sleep(5)
    else
        speaker.playSound("mekanism:gui.digital_beep")
        print("Password Incorrect!")
        sleep(5)
    end
        redstone.setOutput("left", false)
        redstone.setOutput("right", false)
        redstone.setOutput("back", false)
end