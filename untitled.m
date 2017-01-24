clear;

files = dir('C:\Users\jzhang\Desktop\Mthesis\classAppend');
dirFlags = [files.isdir];
subFolders = files(dirFlags);
subFolders(1:2) = [];
for k = 1 : length(subFolders)

    v = VideoReader(strcat(subFolders(k).name,'\color.mp4'));
    v2 = VideoWriter(strcat(subFolders(k).name,'\colorLabel'));
    v2.FrameRate = 28;
    open(v2)

    % video = readFrame(v);
    % for i = 1:round(v.Duration*v.FrameRate)
    %     f = read(v,1);
    %     
    % %     writeVideo(v2,)
    % end
    i = 1;
    while hasFrame(v)
        f = readFrame(v);

        f = insertText(f,[100 100],i,'FontSize',40);
        imshow(f)
        writeVideo(v2,f)

        i = i + 1;
    end
    close(v2)
end