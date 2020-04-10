altar = peripheral.wrap("front")

while true do
    os.sleep(0.5)
    print("Testing...")

    if(turtle.suckUp(1)) then
        oldItem = turtle.getItemDetail(1).name
        print("Old item: " .. oldItem)
        turtle.drop(1)
        
        while true do
            os.sleep(0.1)
            currentItem = altar.getAllStacks()[1].all().id
            print("Current item: " .. currentItem)

            if(oldItem ~= currentItem) then
                print("Finished!")
                turtle.suck(1)
                turtle.turnLeft()
                turtle.drop()
                turtle.turnRight()
                break
            end
        end
    end
end