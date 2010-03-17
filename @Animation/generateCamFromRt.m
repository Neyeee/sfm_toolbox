function cam=generateCamFromRt( anim )
% Generate camera position from R and t in an Animation
%
% USAGE
%  anim = anim.generateCamFromRt()
%
% INPUTS
%  anim     - Animation object (help Animation for details)
%
% OUTPUTS
%  cam      - [ 3 x nFrame ] camera centers
%
% EXAMPLE
%
% See also GENERATETOYANIMATION
%
% Vincent's Structure From Motion Toolbox      Version NEW
% Copyright (C) 2009 Vincent Rabaud.  [vrabaud-at-cs.ucsd.edu]
% Please email me if you find bugs, or have suggestions or questions!
% Licensed under the Lesser GPL [see external/lgpl.txt]

if isempty(anim.R) && isempty(anim.t)
  cam=[];
else
  cam=multiTimes(-anim.R,anim.t,3.1);
end