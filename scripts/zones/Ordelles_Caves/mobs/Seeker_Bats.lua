-----------------------------------
-- Area: Ordelle's Caves
--  MOB: Seeker Bats
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------

function onMobDeath(mob, player, isKiller)
    dsp.regime.checkRegime(player, mob, 658, 1, dsp.regime.type.GROUNDS)
end;