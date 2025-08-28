local printer = peripheral.find("printer")


if not printer.newPage() then
  error("Cannot start a new page. Do you have ink and paper?")
end


textutils.slowPrint("Welcome to Employee Card creation program!")
os.sleep(1)

while true do

  textutils.slowPrint("Please enter new Employee name:")

  local name = read()

  printer.setCursorPos(1,4)
  os.sleep(1)
  textutils.slowPrint("Is that name correct? (yes/no)")
  local answer = read()
  if answer == "yes" then
      printer.write(name)
      printer.setPageTitle("Employee Card")
    break
  end

end

printer.setCursorPos(1,1)
printer.write("   AXIOM INDUSTRIES")
printer.setCursorPos(1,3)
printer.write("NAME:")

os.sleep(1)
while true do
  textutils.slowPrint("Please enter new Employee's department. You can input full name or an abbreviation.")
  os.sleep(1)
  textutils.slowPrint("Please, redo the card if the full name didn't fit")
  os.sleep(1)
  textutils.slowPrint("Currently available positions are:")
  textutils.slowPrint("Security,")
  textutils.slowPrint("Magic and Physics Breaking (MPB) Research,")
  textutils.slowPrint("World, Technology and Flux (WTF) Research,")
  textutils.slowPrint("Metallurgy, Milk and Molten Money Mechanic (MMMMM),")
  textutils.slowPrint("Item and Fluid Storage Administrator (IFS Admin),")
  textutils.slowPrint("Weapon of Hellish Apocalypse Technology (WHAT) Engineer,")
  textutils.slowPrint("Homeless Cave Dweller Team (HCDT),")
  textutils.slowPrint("Couch Warmer Department (Intern)")
  local name = read()


    printer.setCursorPos(1,6)
  printer.write("DEPARTMENT:")
  os.sleep(1)
  textutils.slowPrint("Is that name correct? (yes/no)")
  local answer = read()
  if answer == "yes" then
        printer.setCursorPos(1,7)
        printer.write(name)
    break
  end
end

printer.setCursorPos(1,9)
printer.write("ISSUE DATE:")
printer.setCursorPos(1,10)
local date = os.date("%d %B %Y")
printer.write(date)
printer.setCursorPos(1,12)
printer.write("EXPIRATION DATE:")
printer.setCursorPos(1,13)
printer.write("31 December 2026")

printer.setCursorPos(1,17)
printer.write("PLEASE REGISTER CARD.")

printer.setCursorPos(1,18)
local code = math.random(000000,999999)
printer.write("CODE: ")
printer.setCursorPos(6,18)
printer.write(code)

printer.setCursorPos(1,20)
printer.write("UNREGISTERED CARD.")


textutils.slowPrint("Thank you for using Employee Creation Program! Please remember to register this code in Axiom's database!")

if not printer.endPage() then
    error("can't finish the page!")
end