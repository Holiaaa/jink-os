term.clear()
print("Jink Shell version 0.1 (for Jink OS version 0.1)")
print("Type 'help' for list of commands. Type exit to shutdown the computer")

while true do
    command = io.read()
    
    if command == "help" then
        print("\nJink Shell Help Command.\n\n- help : show help page\n- exit : shutdown computer")
        
    end
    
    if command == "exit" then
        os.shutdown()
    end
    
    shell.execute(command)
end

