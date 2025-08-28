local fuel = turtle.getFuelLevel()
local waitingtime = 2

print("Current fuel level is ",fuel)
sleep(waitingtime)

print("Do you wish to to refuel? (yes/no)")
local inputready = "Do you wish to to refuel? (yes/no)"
local patience = 0
while true do
    local answer = read()
    os.sleep(1)
if answer == "yes" then
    for i=1, 16 do
        turtle.select(i)
        turtle.refuel()
        
    end
    turtle.select(1)
    break
elseif answer == "no" then
    print("No refueling then!")
    break
else
    if patience == 11 then
        print("I'll take it as a no.")
        os.sleep(waitingtime)
        break
    elseif patience == 10 then
        inputready = "It's a simple yes or no question. Do you want fuel?"
    elseif patience == 5 then
        inputready = "Fuel - yes or no"
    elseif patience == 2 then
        print("quit messing with me.")
        inputready = "Do you wish to to refuel? (yes/no)"
    end
    print(inputready)
    patience = patience+1
end
end

sleep(waitingtime)
print("insert building blocks (input \"ready\" to continue)")

local inputready = "Input \"ready\" to continue"
local patience = 0
repeat
    local answer = read()
    os.sleep(1)
    if patience == 11 then
        print("I refuse to work with you. Session terminated")
        os.sleep(waitingtime)
        os.shutdown()
    elseif patience == 10 then
        inputready = "INPUT READY. R-E-A-D-Y. IS IT TOO HARD TO UNDERSTAND?"
    elseif patience == 5 then
        inputready = "\"ready\" - this is what you input"
    elseif patience == 2 then
        inputready = "Input \"ready\" to continue."
    end
    print(inputready)
    patience = patience+1
until answer == "ready"


