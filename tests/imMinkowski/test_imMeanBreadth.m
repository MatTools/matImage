function tests = test_imMeanBreadth(varargin)
%TEST_IMMEANBREADTH  One-line description here, please.
%
%   output = test_imMeanBreadth(input)
%
%   Example
%   test_imMeanBreadth
%
%   See also
%

% ------
% Author: David Legland
% e-mail: david.legland@inra.fr
% Created: 2010-10-08,    using Matlab 7.9.0.529 (R2009b)
% Copyright 2010 INRA - Cepia Software Platform.

tests = functiontests(localfunctions);

function testAddBorderD3(testCase)

img = ones([5 5 5]);
imgb = padarray(img, [1 1 1]);

nDir = 3;
b = imMeanBreadth(img, nDir);
bb = imMeanBreadth(imgb, nDir);

assertEqual(testCase, b, bb);

function testAddBorderD13(testCase)

img = ones([5 5 5]);
imgb = padarray(img, [1 1 1]);

nDir = 13;
b = imMeanBreadth(img, nDir);
bb = imMeanBreadth(imgb, nDir);
assertEqual(testCase, b, bb);

function test_Anisotropic(testCase)

img = ones([5 5 5]);
imgb = padarray(img, [1 1 1]);

nDir = 3;
b = imMeanBreadth(img, nDir, [1 2 3]);
bb = imMeanBreadth(imgb, nDir, [1 2 3]);

assertEqual(testCase, b, bb);

