function[th1,th2,th3]=inverseKinematics(X, Y, Z)
    r = 24;
    a=17; 
    b = 43;
    h = 5;
    fi1 = 0;
    fi2 = 120;
    fi3 = 240;
    
    Xp = X;
    Yp = Y;
    Zp= Z;
    
    A1 = 2 * Zp * a;
    A2 = A1;
    A3 = A1;
    
    B1 = -2 * Xp * a * cosd(fi1) - 2 * Yp * a * sind(fi1) + 2 * (r - h) * a;
    B2 = -2 * Xp * a * cosd(fi2) - 2 * Yp * a * sind(fi2) + 2 * (r - h) * a;
    B3 = -2 * Xp * a * cosd(fi3) - 2 * Yp * a * sind(fi3) + 2 * (r - h) * a;
    C1 = Xp^2 + Yp^2 + Zp^2 + (r - h)^2 + a^2 - b^2 - 2 * Xp *(r - h)  * cosd(fi1) - 2 * Yp * a * sind(fi1);
    C2 = Xp^2 + Yp^2 + Zp^2 + (r - h)^2 + a^2 - b^2 - 2 * Xp * (r - h) * cosd(fi2) - 2 * Yp * a * sind(fi2);
    C3 = Xp^2 + Yp^2 + Zp^2 + (r - h)^2 + a^2 - b^2 - 2 * Xp * (r - h) * cosd(fi3) - 2 * Yp * a * sind(fi3);
    
    th1 = 2 * atand((-1 * A1 - (A1 * A1 + B1 * B1 - C1*C1)^0.5) / (C1 - B1));
    th2 = 2 * atand((-1 * A2 - (A2 * A2 + B2 * B2 - C2*C2)^0.5) / (C2 - B2));
    th3 = 2 * atand((-1 * A3 - (A3 * A3 + B3 * B3 - C3*C3)^0.5) / (C3 - B3));
end

