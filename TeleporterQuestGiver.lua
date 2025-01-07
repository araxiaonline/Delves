local NPC_ID = 600599

local function OnGossipHello(event, player, creature)
    -- Add available quests to the gossip menu
    player:GossipAddQuests(creature)

    -- Teleport Locations BITCHES!!!
    player:GossipMenuAddItem(0, "Old Ironforge (82-84)", 1, 1)
    player:GossipMenuAddItem(0, "Sandfury Delve (82-84)", 1, 2)
    player:GossipMenuAddItem(0, "Blackchar Cave (82-84)", 1, 3)
    player:GossipMenuAddItem(0, "Altar of Storms (82-85)", 1, 4)
    player:GossipMenuAddItem(0, "Arathi Highlands Farm (82-85)", 1, 5)
    player:GossipMenuAddItem(0, "Stonetalon Ruins (82-85)", 1, 6)
    player:GossipMenuAddItem(0, "Stonetalon Logging Camp (82-85)", 1, 7)
    player:GossipMenuAddItem(0, "Elwynn Falls (83)", 1, 8)
    player:GossipMenuAddItem(0, "Quel'Thalas Island (83-85)", 1, 9)
    player:GossipMenuAddItem(0, "Forgotten Gnome Camp (83-85)", 1, 10)
    player:GossipMenuAddItem(0, "Newman's Landing (83-85)", 1, 11)
    player:GossipMenuAddItem(0, "Demon Hunter Cove (83-85)", 1, 12)


    player:GossipSendMenu(1, creature)
end

local function OnGossipSelect(event, player, creature, sender, intid, code)
    local mapId, x, y, z

    if intid == 1 then -- Old Ironforge
        mapId, x, y, z = 0, -4775.9087, -966.2051, 399.0429
    elseif intid == 2 then -- Sandfury Delve
        mapId, x, y, z = 0, -12962.429, -1275.9951, 46.183014
    elseif intid == 3 then -- Blackchar Cave
        mapId, x, y, z = 0, -7308.619, -755.1495, 300.551
    elseif intid == 4 then -- Altar of Storms
        mapId, x, y, z = 309, -11631.548, -2348.38, 10.088909
    elseif intid == 5 then -- Arathi Highlands Farm
        mapId, x, y, z = 0, -1912.7445, -3917.8374, 105.47413
    elseif intid == 6 then -- Stonetalon Ruins
        mapId, x, y, z = 1, 2725.6143, 1951.8698, 290.82837
    elseif intid == 7 then -- Stonetalon Logging Camp
        mapId, x, y, z = 1, 1679.806, 1724.2107, 143.80855
    elseif intid == 8 then -- Elwynn Falls
        mapId, x, y, z = 0, -8322, -340, 145
    elseif intid == 9 then -- Quel'Thalas Island
        mapId, x, y, z = 0, 4243.6436, -2684.3354, 6.3232946
    elseif intid == 10 then -- Forgotten Gnome Camp
        mapId, x, y, z = 0, -5920.707, 966.7653, 485.7631
    elseif intid == 11 then -- Newman's Landing
        mapId, x, y, z = 0, -6339.8486, -862.5663, 397.31238
    elseif intid == 12 then -- Demon Hunter Cove
        mapId, x, y, z = 1, 9645.948, -209.67845, 21.60297
    end

    if mapId and x and y and z then
        player:Teleport(mapId, x, y, z, 0)
    end

    player:GossipComplete()
end

RegisterCreatureGossipEvent(NPC_ID, 1, OnGossipHello)
RegisterCreatureGossipEvent(NPC_ID, 2, OnGossipSelect)

