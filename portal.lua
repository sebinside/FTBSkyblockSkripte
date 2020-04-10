while true do
    if redstone.getInput("back") then
      print("Received redstone signal.")
      sleep(1)
     
      print("Activated portal.")
      redstone.setOutput("top", true)
      sleep(1)
      redstone.setOutput("top", false)
      sleep(5)
   
      print("Activated portal again.")
      redstone.setOutput("top", true)
      sleep(1)
      redstone.setOutput("top", false)
    end
   
    os.queueEvent("someEvent")
    os.pullEvent()
  end