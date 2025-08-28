repeat
    local answer = read()
    local cursor = term.getCursorPos()
    term.setCursorPos(cursor, cursor)
    term.clearLine(cursor)
    print("Input \"ready\" to continue.")
until answer == "ready"
