-----------------------------------
-- Area: Shrine of Ru'Avitau
--  MOB: Air Elemental
-----------------------------------
require("scripts/globals/regimes")
-----------------------------------

function onMobDeath(mob, player, isKiller)
    dsp.regime.checkRegime(player, mob, 750, 1, dsp.regime.type.GROUNDS)
end;