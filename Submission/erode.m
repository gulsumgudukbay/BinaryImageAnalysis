% definition source: https://homepages.inf.ed.ac.uk/rbf/HIPR2/erode.htm
function e = erode(im, se);

[rows, cols] = size(im);
[p, q] = size(se);
offset_p = floor((p - 1) / 2);
offset_q = floor((q - 1) / 2);  

result = zeros(rows-offset_p, cols-offset_q);
result = padarray(result, [offset_p offset_q],1 ,'post');

for i=1:rows-offset_p
    for j=1:cols-offset_q
        out = 0;    
        for se_i=1:p
            if(i + se_i < offset_p || i + se_i - offset_p >= rows) %out of vertical boundaries
                continue;
            end
            for se_j=1:q
                if( j + se_j < offset_q || j + se_j - offset_q >= cols) %out of horizontal boundaries
                    continue;
                end
                if( im(i + se_i - offset_p + 1, j + se_j - offset_q + 1 ) && se(se_i, se_j))
                    out = 1;
                end
            end
        end
        result(i, j) = out;
    end
end

e = result;
end