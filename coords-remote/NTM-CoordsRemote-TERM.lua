local modem = peripheral.find("modem")
local tardis = peripheral.find("tardisinterface")

modem.open(1450)

while true do
 local evt, type, chan, repChan, msg, dist = os.pullEvent("modem_message")
 if msg[3] ~= nil then
  tardis.setDestination(tonumber(msg[1]),tonumber(msg[2]),tonumber(msg[3]))
  if msg[4] ~= nil then
   tardis.setDimension(tonumber(msg[4]))
   if msg[5] ~= nil then
    if msg[6] ~= nil then
     tardis.setFacing(msg[6])
    end
    if msg[5] ~= 0 then
     tardis.setFlight(tonumber(msg[5]))    
    end
   end
  end
 end
end