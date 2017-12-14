clear;
close all;

img = imread( 'plates/tr_34eu2170_close.jpg' );
processed_plate = plate_processing(img, 'tr_34eu2170_close.jpg');

img = imread( 'plates/est_095yhf_close.jpg' );
processed_plate = plate_processing(img, 'est_095yhf_close');

img = imread( 'plates/f_an-684-fh_close.jpg' );
processed_plate = plate_processing(img, 'f_an-684-fh_close');

img = imread( 'plates/gr_tkt-3442_close.jpg' );
processed_plate = plate_processing(img, 'gr_tkt-3442_close');

img = imread( 'plates/i_cz315ne_close.jpg' );
processed_plate = plate_processing(img, 'i_cz315ne_close');

img = imread( 'plates/i_ed485kc_close.jpg' );
processed_plate = plate_processing(img, 'i_ed485kc_close');

img = imread( 'plates/irl_132-ww-450_close.jpg' );
processed_plate = plate_processing(img, 'irl_132-ww-450_close');

img = imread( 'plates/md_chaw352_close.jpg' );
processed_plate = plate_processing(img, 'md_chaw352_close');

img = imread( 'plates/n_dn96650_close.jpg' );
processed_plate = plate_processing(img, 'n_dn96650_close');

img = imread( 'plates/pl_po3c008_close.jpg' );
processed_plate = plate_processing(img, 'pl_po3c008_close');

img = imread( 'plates/rus_am446739_close.jpg' );
processed_plate = plate_processing(img, 'rus_am446739_close');

img = imread( 'plates/s_jmr297_close.jpg' );
processed_plate = plate_processing(img, 's_jmr297_close' );
