local function remoteSetup()
end

local function monitorSetup(type)
end

local function computerSetup()
end

term.clear()
term.setCursorPos(1,1)

local tw, th = term.getSize()

if tw == 51 and th == 19 then
 if peripheral.find("monitor") ~= nil then
    local monitor = peripheral.find("monitor")
    local mw, mh = monitor.getSize()
    if mw == 18 and mh == 12 then
        print("Monitor detected! (2x2) Would you like to set up the remote for that? (Y/N)")
        while true do
            input = read()
            if input == "Y" then
                input = ""
                print("Beginning Monitor (2x2) setup...")
                monitorSetup("2x2")
            elseif input == "N" then
                input = ""
                computerSetup()
            end
        end
    elseif mw == 29 and mh == 12 then
        print("Monitor detected! (3x2) Would you like to set up the remote for that? (Y/N)")
        local input = ""
        while true do
            input = read()
            if input == "Y" then
                input = ""
                print("Beginning Monitor (3x2) setup...")
                monitorSetup("3x2")
            elseif input == "N" then
                input = ""
                computerSetup()
            end
        end
    else
        print("Inadequate Monitor. Must be 2x2 or 3x2.")
        print("Beginning Computer setup...")
        computerSetup()
    end
 else
    print("Beginning Computer setup...")
    computerSetup()
 end
elseif tw == 26 and th == 20 then
    print("Beginning Pocket Computer setup...")
    remoteSetup()
else
    print("Requires Computer, Pocket Computer, 2x2 Monitor or 3x2 Monitor!")
    error("Inadequate screen!")
end
