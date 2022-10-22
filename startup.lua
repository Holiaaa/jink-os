term.clear()
sleep(2)
print("Jink OS version 0.1")
print("ID of the computer:", os.getComputerID())
print("Label of the computer:", os.getComputerLabel())
print("\nActivating wireless...")
sleep(5)
peripheral.find("modem", rednet.open)
print("Wireless status :", rednet.isOpen())

function Error(level, reason)
    print("ERROR! (level:", level, ") ", reason)
    print("Restart computer with a JinkDNS Module or a Wireless Module")
    while true do
        sleep(10) --va rien faire pendant int(256*64*infinity) seconde.
    end
end

if rednet.isOpen() == false then
    Error("fatal", "No Wireless Module attach to the computer")
else
    print("Wireless Conected")
end

print("GET dns value of: dns.jink.com...")
sleep(2)
rednet.send(8, "new connectiond")
local id, message = rednet.receive()
print(message)

print("\nLaunch JinkShell...")
sleep(2)
term.clear()
os.run({}, "/shell.lua")
