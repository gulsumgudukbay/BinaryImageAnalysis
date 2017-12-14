%definition source: https://homepages.inf.ed.ac.uk/rbf/HIPR2/dilate.htm
function d = dilate(im, se);

[rows, cols] = size(im);
[p, q] = size(se);

offset_p = floor((p - 1) / 2);
offset_q = floor((q - 1) / 2);  

result = ones(rows-offset_p, cols-offset_q);
result = padarray(result, [offset_p offset_q],1 ,'post');

for i=1:rows-offset_p
    for j=1:cols-offset_q
        out = 1;    
        for se_i=1:p
            if(i + se_i < offset_p || i + se_i - offset_p >= rows)
                continue;
            end
            for se_j=1:q
                if( j + se_j < offset_q || j + se_j - offset_q >= cols)
                    continue;
                end
                if( im(i + se_i - offset_p + 1, j + se_j - offset_q + 1) == 0 && se(se_i, se_j))
                    out = 0;
                end
            end
        end
        result(i, j) = out;
    end
end

d = result;
end

