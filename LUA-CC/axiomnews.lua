local printer = peripheral.find("printer")
local pg = 1
local pages = tostring(pg)
local function nextPage()
  if not printer.newPage() then
    error("No paper.")
  end
printer.setPageTitle("Axiom newspaper (page "..pages..")")
pages = pages + 1
end

nextPage()

local lines = require "cc.strings".wrap("  Axiom news - all true!\n\n\n--Axiom experiments--\n\nAs of writing this article, Axiom is still in ruins after a horrible accident, involving a certain exploding casserole. The resulting resonance cascade wiping out the latest edition of Spice of Life was descriped as \"slightly annoying, but not too much of a problem considering the never ending growth of spent nuclear waste\"", 25)
for i = 1, #lines do
  printer.setCursorPos(1, i)
  printer.write(lines[i])
end

if not printer.endPage() then
    error("No space.")
end
nextPage()

local lines = require "cc.strings".wrap("--Weather report--\n\nAccording to our one (1) expert, the current weather report is, quote, \"Oh shit, there's so much sand, I can't get out! I'm getting burried alive! Guys, I told you climate change is no joke! I'm getting burried here! Heeeeelp!\"\nWe believe there's nothing to worry about. Days get more sunny everyday.", 25)
for i = 1, #lines do
  printer.setCursorPos(1, i)
  printer.write(lines[i])
end

if not printer.endPage() then
    error("No space.")
end
nextPage()

local lines = require "cc.strings".wrap("--Local news - Gruzbaza--\n\nWhen it comes to our local community, Gruzbaza sure is lively! They produced over 25k pieces of cobblestone, using their \"Effective and cheap method that effectively breaks laws of physics\" which is \"So good, all they do is stare at one single bucket of lava doing all the job\"\nBravo to our brave engineers destroying the very fabric of reality to maximize means of production!", 25)
for i = 1, #lines do
  printer.setCursorPos(1, i)
  printer.write(lines[i])
end

if not printer.endPage() then
    error("No space.")
end
nextPage()

local lines = require "cc.strings".wrap("--Bugs - creepy crawlers and spooky spike lags!--\n\nDue to a recent issue, we have constant rendering updates. If that happens to you, please send me the crash/game log to further analyze this issue. Bugs will be squashed in the name of democracy!\n\n--Smol things - all the thingamabobs--\n\n Tinker's construct is a new mod intruduced in version 0.7 of BeansCraft. Abuse it while you can!", 25)
for i = 1, #lines do
  printer.setCursorPos(1, i)
  printer.write(lines[i])
end

if not printer.endPage() then
    error("No space.")
end
nextPage()
local printer = peripheral.find("printer")
printer.setPageTitle("Axiom newspaper (page 5)")


local lines = require "cc.strings".wrap("Another furniture is a brand new furniture mod, which hopefully won't cause issues like the last one did.\n\nWe added pretty rain for... prettier rain. Yeah.\n\nClaiming chunks needs some improvements? Let us know!", 25)
for i = 1, #lines do
  printer.setCursorPos(1, i)
  printer.write(lines[i])
end

if not printer.endPage() then
    error("No space.")
end