function sp = surveillance_processing(img, base, name)
img = rgb2gray(img);
base = rgb2gray(base);

img_detect = base - img;
figure; imshow(img_detect);
title('After Subtraction');
filename = strcat('question_3_outputs/', name, '_after_back_subtract.png');
imwrite(img_detect, filename );

img_thresh = (img_detect >= 65);
figure; imshow(img_thresh);
title('After Thresholding');
filename = strcat('question_3_outputs/', name, '_after_thresh.png');
imwrite(img_thresh, filename );

%invert image!
img_thresh = ~img_thresh;

se = strel('disk', 3);
se = getnhood(se);
img_er = erode( img_thresh, se);

se = strel('disk', 3);
se = getnhood(se);
img_dil = dilate(img_er, se);

img_dil = img_dil & img_thresh;

%invert image back!
img_dil = ~img_dil;

figure; imshow(img_dil);
title('After Morphological Operations');
filename = strcat('question_3_outputs/', name, '_after_morph.png');
imwrite(img_dil, filename );

labeled_img = bwlabel(img_dil);
labeled_img = label2rgb(labeled_img);

figure; imshow(labeled_img);
title('Connected Components Labeling');
filename = strcat('question_3_outputs/', name, '_after_ccl.png');
imwrite(labeled_img, filename );

sp = labeled_img;

end