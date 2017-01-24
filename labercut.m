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



j = 1;%frame number
for i = 1:19  %label number
while hasFrame(v)

    v2.FrameRate = 28;
    open(v2)
    writeVideo(v2,f);
    j = j + 1;

 end;
close(v2)
end;