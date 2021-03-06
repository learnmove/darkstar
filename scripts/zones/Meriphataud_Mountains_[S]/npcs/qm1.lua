-----------------------------------
-- Area: Meriphataud Mountains [S]
--  NPC: ???
-- !pos 757 -16 -446
-----------------------------------
local ID = require("scripts/zones/Meriphataud_Mountains_[S]/IDs");
require("scripts/globals/npc_util");
-----------------------------------

function onTrade(player,npc,trade)
    if (npcUtil.tradeHas(trade, 2566) and not GetMobByID(ID.mob.BLOODLAPPER):isSpawned()) then -- Gnat Pellets
        player:confirmTrade();
        SpawnMob(ID.mob.BLOODLAPPER):updateClaim(player);
    end
end;

function onTrigger(player,npc)
    player:messageSpecial(ID.text.NOTHING_OUT_OF_ORDINARY);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;
