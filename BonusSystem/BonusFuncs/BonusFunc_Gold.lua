require("BonusSystem/BonusType")

BonusFunc_Gold = {}

function BonusFunc_Gold:bonus_type()
    return BonusType.Gold
end

function BonusFunc_Gold:do_bonus()
    print("gold")
end
