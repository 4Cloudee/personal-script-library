local function inTable(tbl, item)
    for key, value in pairs(tbl) do
        if value == item then return true end
    end
    return false
end

local tbl = {"a", "b", 2, 1, 1337}
local printer = peripheral.find("printer")

if not printer.newPage() then
  error("Cannot start a new page.")
end

textutils.slowPrint("Welcome to Axiom's code verification. Please keep in mind that this softare can be updated only by the Director.")
os.sleep(1)
textutils.slowPrint("Please enter the employees code to verify.")
local answer = read()
if inTable(tbl, tonumber(answer)) == true then
  printer.setCursorPos(1,19)
  local label = os.getComputerLabel()
  local ID = os.getComputerID()
  printer.write("REGISTERED CODE: ")
  printer.setCursorPos(17,19)
  printer.write(answer)
  printer.setCursorPos(1,20)
  printer.write("REGISTERED BY: ")
  printer.setCursorPos(16,20)
  printer.write(label)
  printer.setCursorPos(1,21)
  printer.write("PC ID: ")
  printer.setCursorPos(7,21)
  printer.write(ID)
  printer.setCursorPos(1,17)
  printer.write("BOTH CODES MUST MATCH.")
  textutils.slowPrint("This number is registered. Have a productive day!")
else
  textutils.slowPrint("This number is not registered. Please dispose of this card owner immediately and notify the security!")
end

if not printer.endPage() then
    error("can't finish the page!")
end