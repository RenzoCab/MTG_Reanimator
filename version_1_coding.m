function [deck] = version_1_coding()

    deck = {};

    % 4 Unmask
    % 4 Dark Ritual
    % 4 Lotus Petal
    % 16 Swamp
    % 4 Goryo's Vengeance
    % 4 Shallow Grave 
    % 4 Exhume
    % 4 Reanimate
    % 4 Griselbrand
    % 4 Entomb
    % 1 Emrakul, the Aeons Torn
    % 3 Chrome Mox
    % 4 Grief
    
    % 4 unmask
    for i = 1:4
        deck{end+1} = {'unmask',4,'remove_bc'};
    end
    
    % 4 dark-ritual
    for i = 1:4
        deck{end+1} = {'dark-ritual',1,'non'};
    end

    % 4 lotus-petal
    for i = 1:4
        deck{end+1} = {'lotus-petal',0,'non'};
    end
    
    % 16 swamp
    for i = 1:16
        deck{end+1} = {'swamp',0,'non'};
    end
    
    % 4 goryos-vengeance
    for i = 1:4
        deck{end+1} = {'goryos-vengeance',2,'non'};
    end
    
    % 4 shallow-grave
    for i = 1:4
        deck{end+1} = {'shallow-grave',2,'non'};
    end
    
    % 4 exhume
    for i = 1:4
        deck{end+1} = {'exhume',2,'non'};
    end
    
    % 4 reanimate
    for i = 1:4
        deck{end+1} = {'reanimate',1,'non'};
    end
    
    % 4 griselbrand
    for i = 1:4
        deck{end+1} = {'griselbrand',8,'non'};
    end
    
    % 4 entomb
    for i = 1:4
        deck{end+1} = {'entomb',1,'non'};
    end
    
    % 1 emrakul-the-aeons-torn
    for i = 1:1
        deck{end+1} = {'emrakul-the-aeons-torn',15,'non'};
    end
    
    % 3 chrome-mox
    for i = 1:3
        deck{end+1} = {'chrome-mox',0,'non'};
    end
    
    % 4 grief
    for i = 1:4
        deck{end+1} = {'grief',4,'remove_bc'};
    end

return