function pp = plate_processing(img, name)
%img = rgb2gray(img);
img = img(:,:,3);;
im_thresh = (img >= 65);
figure; imshow(im_thresh)
title('After Thresholding');
filename = strcat('question_2_outputs/', name, '_after_thresh.png');
imwrite(im_thresh, filename );

se = strel('disk', 4);
se_nh = getnhood(se);
img_eroded = erode(im_thresh, se_nh);

se = strel('disk', 6);
se_nh = getnhood(se);
img_dilated = dilate(img_eroded, se_nh);

[p, q] = size(se);
offset_p = floor((p - 1) / 2);
offset_q = floor((q - 1) / 2);  

for i = 1:p+1
    for j = 1:q+1
       im_thresh(i+1, j+1) = im_thresh(i, j);
    end
end

final_img = ~(~img_dilated & ~im_thresh);
figure; imshow(final_img)
title('After Morphological Operations');
filename = strcat('question_2_outputs/', name, '_after_morph.png');
imwrite(final_img, filename );

final_img = ~final_img;
labeled_img = bwlabel(final_img);
labeled_img = label2rgb(labeled_img);
figure; imshow(labeled_img);
title('After Connected Components Labeling');
filename = strcat('question_2_outputs/', name, '_after_ccl.png');
imwrite(labeled_img, filename );

pp = labeled_img;
end