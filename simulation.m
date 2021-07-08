close all;
clear all;
clc;

mana_distribution  = zeros(1,12);
x_mana             = [0:11];
num_iter           = 10000;
reanimate_material = 0;
add_mox            = 1;

for i = 1:num_iter

    deck = version_1_coding_2();
    deck = deck(randperm(length(deck),length(deck)));
    hand = deck(1:7); deck(1:7) = [];
    [hand,mana] = mana_production(hand,add_mox);
    mana_distribution(mana+1) = mana_distribution(mana+1) + 1;
    
    % (unmask+griselbrand) or entomb?
    if (sum(ismember(hand,'unmask')) && sum(ismember(hand,'griselbrand')))...
            || sum(ismember(hand,'entomb'))
        reanimate_material = reanimate_material + 1;
    end
    

end

mana_distribution = mana_distribution / num_iter * 100;
plot(x_mana,mana_distribution,'*-');
xlim([min(x_mana) max(x_mana)]);
xlabel('Black Mana');
ylabel('Probability');
grid minor;

disp(reanimate_material / num_iter * 100);