%
clear;
load dtd_mle_2000.mat;
dtd_mle_2000_monthly(1) = extractMonth(firmDtd, 201801);
dtd_mle_2000_monthly(2) = extractMonth(firmDtd, 201802);
dtd_mle_2000_monthly(3) = extractMonth(firmDtd, 201803);
dtd_mle_2000_monthly(4) = extractMonth(firmDtd, 201804);
dtd_mle_2000_monthly(5) = extractMonth(firmDtd, 201805);

save dtd_mle_2000_monthly;

function dtd = extractMonth(firmDtd, month)
    date = floor(firmDtd(:, 2) / 100);
    monthDtd = firmDtd(date == month, 3);
    cur_index = length(monthDtd);
    value = monthDtd(cur_index);
    while isnan(value)
        if cur_index > 1
            cur_index = cur_index - 1;
            value = monthDtd(cur_index);
        else
            break
        end
    end
    if ~isnan(value)
        dtd = value;
    else
        dtd = firmDtd(end, 3);
    end
end