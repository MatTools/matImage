function tests = test_imEuler1d(varargin) 
%TEST_IMEULER1D  One-line description here, please.
%
%   output = test_imEuler1d(input)
%
%   Example
%   test_imEuler1d
%
%   See also
%

% ------
% Author: David Legland
% e-mail: david.legland@inra.fr
% Created: 2010-10-08,    using Matlab 7.9.0.529 (R2009b)
% Copyright 2010 INRA - Cepia Software Platform.

tests = functiontests(localfunctions);


function testBasic(testCase)

img = [0 0 1 1 1 0 1 0];

len = imEuler1d(img);

exp = 2;
assertEqual(testCase, exp, len);


function testAddBorder(testCase)

img = ones(1, 5);
imgb = padarray(img, [0 1]);

len = imEuler1d(img);
len2 = imEuler1d(imgb);

assertEqual(testCase, len, len2);


function testCalib(testCase)

img = [0 0 1 1 1 0 1 0];

len = imEuler1d(img, .4);

exp = 2;
assertEqual(testCase, exp, len);

