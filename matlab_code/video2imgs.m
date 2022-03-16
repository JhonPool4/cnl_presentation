%==========================
% author    :    jhon charaja
% email      :    jhon.charaja@utec.edu.pe   
% info        :     save each frame of a video as 
%                     a .jpg image
% ==========================
clc, clear all, close all,

% directories: video and images
video_dir = '/home/jhon/Desktop/cnl_presentation/videos';
images_dir = '/home/jhon/Desktop/cnl_presentation/imgs/inverted_pendulum';
video_name = 'Inverted-Pendulum.mp4';

% get video information
my_video=VideoReader(fullfile(video_dir, video_name));
numFrames = my_video.NumFrames;
%%
% save each frame as an .jpg image
 for i = 1:1numFrames
     frames = read(my_video,i);
     img_name= fullfile(images_dir, strcat(int2str(i),'.jpg'));
     imwrite(frames,img_name);
 end
