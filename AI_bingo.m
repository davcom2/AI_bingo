% AI bingo creator
%
% Dave Wong 2019

% take a list of crappy AI phrases from a csv file
% AI_phrases.csv

% choose a grid size: small (4x4), medium (5x4), large (5x5) - default
% small
clear all
phrases = {'Its not even AI', 'Empower the patient',...
    'We need to think about regulation/governance', 'How can we be truly patient-centred?',...
    'its not about REPLACING the doctor', 'How do we build ethics into the process?',...
    'Its about human AND machine', 'Blockchain',...
    'Co-production', 'Interdisciplinary', 'Quantity vs Quality of data',...
    'I dont want to use a [buzzword], but [buzzword]', 'artificial general intelligence',...
    'GDPR', 'data = [something] analogy', 'black box'};
H = 4;
W = 4;
S = H*W;

idx = randperm(H*W);

figure
for i = 1:length(idx)
    axis off
    annotation('textbox',[(mod(i-1,W))/W floor((i-1)/H)/H 1/H 1/W],'String',phrases{idx(i)});
    %text(0.5,0.5, phrases{idx(i)})
end
