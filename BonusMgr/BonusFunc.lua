require("BonusType")

BonusFunc = {};

BonusCoinFunc = {
    bonus_type = BonusType.Coin;

    do_bonus = function ()
        print("coin");
    end;
};

BonusGoldFunc = {
    bonus_type = BonusType.Gold;

    do_bonus = function ()
        print("gold");
    end;
};

return BonusFunc;
