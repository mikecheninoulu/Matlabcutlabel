clc;
clear;
close all;
datalabel = load('/Users/chenhaoyu/Desktop/MGlabelsimple.csv');
data = datalabel(:,1);
startframe = datalabel(:,2);
endframe = datalabel(:,3);
label = datalabel(:,4);
length = (endframe - startframe)/(28*60);

v = VideoReader('/Users/chenhaoyu/Desktop/caves/071901/color.mp4');

for i=838:888
    img = readframe( v, i );
    imshow(img);
end