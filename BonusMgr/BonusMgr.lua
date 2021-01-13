require("BonusFunc")

BonusMgr = {}

local map;

function BonusMgr:init()
    map = {};
    map[BonusGoldFunc.bonus_type] = BonusGoldFunc;
    map[BonusCoinFunc.bonus_type] = BonusCoinFunc;
end

function BonusMgr:dispose()
    map = nil;
end

function BonusMgr:do_bonus(bonus_type, ...)
    local x = map[bonus_type];
    if (x ~= nil) then
        x:do_bonus(...);
    end
end

return BonusMgr;
