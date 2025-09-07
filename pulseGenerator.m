function [pulse1, pulse2, pulse3] =pulseGenerator(th1, th2, th3)
    rpoly = 5.72957795;
    rmtotor = 0.9549296585;
    degperpulse = 1.8;
    driverpulsecoefitiont = 32;

    pulse1 = round((rpoly * th1 *   driverpulsecoefitiont) / (rmtotor * degperpulse));
    pulse2 = round((rpoly * th2 *    driverpulsecoefitiont) / (rmtotor * degperpulse));
    pulse3 = round((rpoly * th3 *    driverpulsecoefitiont) / (rmtotor * degperpulse));
end
