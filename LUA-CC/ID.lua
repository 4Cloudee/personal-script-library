local printer = peripheral.find("printer")


if not printer.newPage() then
  error("Cannot start a new page. Do you have ink and paper?")
end


printer.setPageTitle("ACCESS CARD - LEVEL 1")
printer.setCursorPos(1,4)
local lines = require "cc.strings".wrap("   AXIOM INDUSTRIES \n \n This card provides access to low security zone, cafeteria and the elevator complex. \n \n \n Giving this card to personell with an insufficient security clearance is strictly forbidden and will result in punishment. \n \n \n \n ACCESS CARD. PROPERTY OF AXIOM INDUSTRIES. DO NOT COPY, DESTROY OR MODIFY THIS CARD.", 25)
for i = 1, #lines do
  printer.setCursorPos(1, i)
  printer.write(lines[i])
end


if not printer.endPage() then
    error("can't finish the page!")
end