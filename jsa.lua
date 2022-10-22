print("Jink Server OS version 0.1")
rednet.open("back")
print("Server ID :", os.getComputerID()) 

while true do

local id, message = rednet.receive(nil, 5)

    if not id then
        -- fait rien jusqu'a un signal dns de jink.
    else
        print(("Computer %d sent message %s"):format(id, message))
        rednet.send(id, "GET dns message: authorized.")
    end

end

