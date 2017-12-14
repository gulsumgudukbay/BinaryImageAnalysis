clear;
close all;

base = imread( 'pets2000/0000.jpg' );
redcar = imread( 'pets2000/0150.jpg' );
whitecar = imread( 'pets2000/0800.jpg' );
humans = imread( 'pets2000/1300.jpg' );

processed_red_car = surveillance_processing( redcar, base, '2000/0150');
processed_white_car = surveillance_processing( whitecar, base, '2000/0800' );
processed_humans = surveillance_processing( humans, base, '2000/1300');

base2 = imread( 'pets2001/0040.jpg' );
humans1 = imread( 'pets2001/0535.jpg' );
humans2 = imread( 'pets2001/0950.jpg' );
humans3 = imread( 'pets2001/1750.jpg' );

processed_humans1 = surveillance_processing( humans1, base2, '2001/0535');
processed_humans2 = surveillance_processing( humans2, base2, '2001/0950' );
processed_humans3 = surveillance_processing( humans3, base2, '2001/1750');