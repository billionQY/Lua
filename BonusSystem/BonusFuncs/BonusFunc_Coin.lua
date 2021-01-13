require("BonusSystem/BonusType")

BonusFunc_Coin = {}

function BonusFunc_Coin:bonus_type()
    return BonusType.Coin
end

function BonusFunc_Coin:do_bonus()
    print("coin")
end
