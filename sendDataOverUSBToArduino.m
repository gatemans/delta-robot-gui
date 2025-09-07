 function sendDataOverUSBToArduino(portName, matrixToSend)
    s = serialport(portName, 9600);  
    pause(2); 

    if size(matrixToSend, 1) == 1
        dataStr = sprintf('%d %d %d\n', matrixToSend(1), matrixToSend(2), matrixToSend(3));
        writeline(s, dataStr);
        pause(1);
    else
        for i = 1:size(matrixToSend,1)
            dataStr = sprintf('%d %d %d\n', matrixToSend(i,1), matrixToSend(i,2), matrixToSend(i,3));
            writeline(s, dataStr);
            pause(1);
        end
    end

    flush(s);        
    clear s;          