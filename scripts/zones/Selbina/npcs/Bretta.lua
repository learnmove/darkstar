-----------------------------------
-- Area: Selbina
--  NPC: Bretta
-- !pos Poor Bretta lost in the depths of the database. Go find her.
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    if (player:getZPos() > -28.750) then
        player:startEvent(1133, 1152 - ((os.time() - 1009810584)%1152));
    else
        player:startEvent(222);
    end
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;
