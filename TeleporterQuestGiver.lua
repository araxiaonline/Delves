-- NPC ID for the Delve Quest Giver
local npc_id = 600599
-- Delve coordinates and icons
local delves = {
    {name = "Old Ironforge", level = "82-84", coords = "-4775.9087 -966.2051 399.0429 0", icon = 50},  -- Neutral Icon
    {name = "Sandfury Delve", level = "82-84", coords = "-12962.429 -1275.9951 46.183014 0", icon = 50},  -- Neutral Icon
    {name = "Blackchar Cave", level = "82-84", coords = "-7308.619 -755.1495 300.551 0", icon = 50},  -- Neutral Icon
    {name = "Altar of Storms", level = "82-85", coords = "-11631.548 -2348.38 10.088909 309", icon = 50},  -- Neutral Icon
    {name = "Arathi Highlands Farm", level = "82-85", coords = "-1912.7445 -3917.8374 105.47413 0", icon = 50},  -- Neutral Icon
    {name = "Stonetalon Ruins", level = "82-85", coords = "2725.6143 1951.8698 290.82837 1", icon = 50},  -- Neutral Icon
    {name = "Stonetalon Logging Camp", level = "82-85", coords = "1679.806 1724.2107 143.80855 1", icon = 50},  -- Neutral Icon
    {name = "Elwynn Falls", level = "83", coords = "-8322 -340 145 0", icon = 50},  -- Neutral Icon
    {name = "Quel'Thalas Island", level = "83-85", coords = "4243.6436 -2684.3354 6.3232946 0", icon = 50},  -- Neutral Icon
    {name = "Forgotten Gnome Camp", level = "83-85", coords = "-5920.707 966.7653 485.7631 0", icon = 50},  -- Neutral Icon
    {name = "Newman's Landing", level = "83-85", coords = "-6339.8486 -862.5663 397.31238 0", icon = 50},  -- Neutral Icon
    {name = "Demon Hunter Cove", level = "83-85", coords = "9645.948 -209.67845 21.60297 1", icon = 50}   -- Neutral Icon
}

-- Function to handle the gossip menu
local function on_gossip_select(event, player, object, sender, action)
    if action == 1 then
        -- Teleport to the selected delve
        local delve = delves[sender]
        local coords = delve.coords
        player:Teleport(coords)
        player:SendBroadcastMessage("You have been teleported to " .. delve.name .. " (" .. delve.level .. "). Prepare for battle!")
        player:GossipComplete()
    end
end

-- Function to add the gossip menu with icons
local function on_gossip_hello(event, player, object)
    -- Add greeting and delve options to the gossip menu
    player:GossipMenuAddItem(0, "The world is in turmoil, and there are many delves that need brave adventurers. Will you answer the call?", 0, 1)
    
    for i, delve in ipairs(delves) do
        -- Adding the icon before each delve name
        player:GossipMenuAddItem(delve.icon, delve.name .. " (" .. delve.level .. ")", 0, i)
    end

    player:GossipSendMenu(1, object)
end

-- Register NPC events
RegisterCreatureGossipEvent(npc_id, 1, on_gossip_hello)
RegisterCreatureGossipEvent(npc_id, 2, on_gossip_select)
