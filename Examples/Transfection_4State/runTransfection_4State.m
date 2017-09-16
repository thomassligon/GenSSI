% runTransfection_4State performs the structural identifiability analysis
% for the 4-state model for mRNA transfection introduced by
% 
%    Lechtenberg, L. (2015). Model selection in deterministic models of
%    mRNA transfection. Master Thesis, Ludwig-Maximilians-Universitaet,
%    Munich, Germany.
%
% In contrast to the 2-state transfection model, the 4-state transfection
% model accounts for an enzymatic degration of the mRNA.

% Structural identifiability analysis for all parameters
genssiMain('Transfection_4State',7);

% Transformation of the model
genssiTransformation('Transfection_4State',...          % Initial model
                     'TransformationRules_4State',...   % Definition of transformation
                     'transformedTransfection_4State'); % Name of transformed model

% Structural identifiability analysis for transformed model
genssiMain('transformedTransfection_4State',7);

