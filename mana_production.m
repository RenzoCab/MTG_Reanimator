function [hand,mana] = mana_production(hand,add_mox)
    
    played_land = 0;
    mana        = 0;
    indices     = [];

    for i = 1:length(hand)
        if played_land == 0 && strcmp(hand{i},'swamp')
            indices(end+1) = i;
            mana           = mana + 1;
            played_land    = 1;
        end
    end
    hand(indices) = [];
    indices       = [];
    
    for i = 1:length(hand)
        if strcmp(hand{i},'lotus-petal')
            indices(end+1) = i;
            mana           = mana + 1;
        end
    end
    hand(indices) = [];
    indices       = [];
    
    for i = 1:length(hand)
        if mana > 0 && strcmp(hand{i},'dark-ritual')
            indices(end+1) = i;
            mana           = mana + 2;
        end
    end
    hand(indices) = [];
    indices       = [];
    
    if add_mox == 1
        for i = 1:length(hand)
            if strcmp(hand{i},'chrome-mox')
                indices(end+1) = i;
                mana           = mana + 1;
                end
            end
        hand(indices) = [];
        indices       = [];
    end
    
return