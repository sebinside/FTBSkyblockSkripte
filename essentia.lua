essentiaHash = {
    machina = "f36968d453592c101629ff03dbbfee26",
    ira = "d5a708b5e6cf0f421e7dc9355d304dae",
    vinculum = "9124a2acb4161cb0484ccc06924c8e5c",
    tempus = "69f0f950fc1af7fe3b5cd76b96fe2a12",
    herba = "951cbfb1ee185cc2a0db21a7ee5c4658",
    instrumentum = "2e0923f828ce335b6356bf1fde489986",
    arbor = "404d0f64c5aeb1fecc174850bf606a0f",
    meto = "aa7b17df81fa0be6959f653e259d6a49",
    fabrico = "6a7f52f93c5b4558bdbfe12e52ea0209",
    invidia = "7168677549d5906cd2fee78349113047",
    pannus = "74d6ce35611a333020364e921b5864bf",
    desidia = "2cf039eb58826a770024b859478bdf13",
    vitium = "50a0d85a9992ecdb9efce7d8a5fc7b15",
    messis = "1100f8a3629369e4bd219f2b30d978ac",
    limus = "4b3878326e97bda1f0c8f02d43e1f724",
    perfodio = "3306eb2763dcd8bee9f4e77aa3a916bc",
    tempestas = "4058af44332d4a3c020ba28595eafe09",
    volatus = "33992e4570fb0c5a46061cfe0a0f1550",
    motus = "1e995bd21733e006a757af6511adeb14",
    tenebrae = "c1266ba6956c8507b976ed0af0fe921c",
    fames = "2d46425f72b47ee82e008df41fe44ff0",
    superbia = "62ab1d0d4ce536081358faa06507f2a8",
    lucrum = "d428fcfe78d4f204a1b7d7c88c597f4d",
    gula = "8e8405341043a4dc957058fea34f7fde",
    praecantatio = "96e68bba97a9197b08e8b218f89f6cd1",
    sensus = "4b753601ce070e02ae12c0744afa8b01",
    humanus = "c22f882f5d3ad66818112f7e109ed065",
    vacuos = "1490e650a531f04fb231561dfb3cbc1c",
    metallum = "b30a393ba36c2914da2124e0c15ba6c6",
    lux = "651ed7f8722d8528927ffeb78c3b36af",
    mortuus = "503677942dd95011d466c40d7b305e4e",
    telum = "ef0a022b50093731e91c1775e9a6b2c4",
    luxuria = "552c659fd588d96f66fd2ad07a4948c6",
    tutamen = "b39c13da67e0f8fc6a1b415281dc1eb7",
    infernus = "76fca4fc64045eb94d1e8eb9ef6d5721",
    iter = "f37ca1c21238fb6d1a803ff3697bae37",
    exanimis = "6e496450ecf5f1366f504787abc1a7ce",
    alienis = "ec96883e36124223662ee4b55e00ac43",
    cognitio = "1af1aa4c0de6f05411c2921f8ea49ada",
    ordo = "2e3aaf69f3b0eb9dc91d649ebfd7a6d6",
    potentia = "dfb1cc975c8f94b2743ac3d5271869a1",
    perditio = "665401c955afa0b1d77a63a9b8421b37",
    permutatio = "69e96cbd20cf95621d1194fe3b700c5b",
    spiritus = "8bd1142ca027f3f3f2a7ea86420a4be7",
    bestia = "fa69d331cb2d38384e02086c506eaa43",
    sano = "dccfa897b53c2b437372cbb24c6e09b3",
    corpus = "fc82a45802f77b91a76fa9f951de83bd",
    ignis = "c633bfdcd33be5dd1a75f6aff84d2ecf",
    victus = "46239a9297df5f8f6b074e3735706db6",
    aqua = "1cb399bc43c8bc3b7a6e53ee7c4b2652",
    venenum = "2ec178e9e6aa8958d7df1af5d3203999",
    aer = "964fdc73a1032004ae92c5faaff017f0",
    gelum = "7e83cd135885aa779957eda2a7f0778c",
    terra = "f85a995d3cb9a4f606140f2191a5afc6",
    vitreus = "b9f3d17344cf347090104b28d49cfce0"
}

essentia = peripheral.wrap("right")
interface = peripheral.wrap("back")
chest = peripheral.wrap("left")

function isChestEmpty()
    chestItems = chest.getAllStacks()
    return next(chestItems) == nil
end

function getAmount(aspect)
    os.sleep(1)
    return essentia.getAmount(aspect)
end

function exportSomeWispEssence(hash)
    os.sleep(0.1)
    item = { id = "Thaumcraft:ItemWispEssence", dmg = 0, nbt_hash = hash }
    interface.exportItem(item, "EAST", 4)
end

function doWork()
    exported = false
    for name,hash in pairs(essentiaHash) do
        if getAmount(name) < 2048 then
            print("Threshhold not reached: " .. name)
            exportSomeWispEssence(hash)
            sleep(0.1)
            exported = true
        end
    end
    if not exported then
        print("All thresholds reached.")
    end
end

while true do
    os.sleep(1)
    if isChestEmpty() then
        print("Chest empty!")
        doWork()
    else
        print("Chest not empty!")
    end
end