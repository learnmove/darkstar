-----------------------------------------
-- ID: 5975
-- Item: Plate of Flapano's Paella
-- Food Effect: 4 Hrs, All Races
-----------------------------------------
-- HP 45
-- Vitality 6
-- Defense % 26 Cap 155
-- Undead Killer 6
-----------------------------------------
require("scripts/globals/status")
-----------------------------------------

function onItemCheck(target)
    local result = 0
    if target:hasStatusEffect(dsp.effect.FOOD) or target:hasStatusEffect(dsp.effect.FIELD_SUPPORT_FOOD) then
        result = 246
    end
    return result
end

function onItemUse(target)
    target:addStatusEffect(dsp.effect.FOOD,0,0,14400,5975)
end

function onEffectGain(target,effect)
    target:addMod(dsp.mod.HP, 45)
    target:addMod(dsp.mod.VIT, 6)
    target:addMod(dsp.mod.FOOD_DEFP, 26)
    target:addMod(dsp.mod.FOOD_DEF_CAP, 155)
    target:addMod(dsp.mod.UNDEAD_KILLER, 6)
end

function onEffectLose(target, effect)
    target:delMod(dsp.mod.HP, 45)
    target:delMod(dsp.mod.VIT, 6)
    target:delMod(dsp.mod.FOOD_DEFP, 26)
    target:delMod(dsp.mod.FOOD_DEF_CAP, 155)
    target:delMod(dsp.mod.UNDEAD_KILLER, 6)
end
