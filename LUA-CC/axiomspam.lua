local printer = peripheral.find("printer")
local pg = 1
local pages = tostring(pg)

  if not printer.newPage() then
    error("No paper.")
  end

  printer.setPageTitle("lamp.")


local lines = require "cc.strings".wrap("LIVVY IS GAE", 25)
for i = 1, #lines do
  printer.setCursorPos(1, i)
  printer.write(lines[i])
end

if not printer.endPage() then
    error("No space.")
end