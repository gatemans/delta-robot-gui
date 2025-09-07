function sendPulseRow(s, pulseRow)
    % s : شیء سریال
    % pulseRow : وکتور شامل سه پالس [p1, p2, p3]

    dataStr = sprintf('%d %d %d\n', pulseRow(1), pulseRow(2), pulseRow(3));
    writeline(s, dataStr);
    pause(1);  % فرصت کوتاه برای پردازش آردوینو
end
