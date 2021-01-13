require("BonusSystem/BonusType")
require("BonusSystem/BonusFuncs/BonusFunc_Coin")
require("BonusSystem/BonusFuncs/BonusFunc_Gold")

BonusMgr = {}

local map

function BonusMgr:init()
    map = {}
    map[BonusFunc_Coin:bonus_type()] = BonusFunc_Coin
    map[BonusFunc_Gold:bonus_type()] = BonusFunc_Gold
end

function BonusMgr:dispose()
    map = nil
end

function BonusMgr:do_bonus(bonus_type, ...)
    local x = map[bonus_type];
    if (x ~= nil) then
        x:do_bonus(...)
    end
end

return BonusMgr
