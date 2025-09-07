function [Xp, Yp, Zp] = delta_forward_kinematics(theta1, theta2, theta3)
    r =24;       
    a = 17;        
    b = 43;       
    h =5;        

    theta = [theta1, theta2, theta3];  
    phi = [0, 120, 240];               

    xi = zeros(1,3);
    yi = zeros(1,3);
    zi = zeros(1,3);

    for i = 1:3
        xi(i) = (r - h + a * cosd(theta(i))) * cosd(phi(i));
        yi(i) = (r - h + a * cosd(theta(i))) * sind(phi(i));
        zi(i) = -a * sind(theta(i));  
    end 

    fun = @(P) [
        (P(1) - xi(1))^2 + (P(2) - yi(1))^2 + (P(3) + zi(1))^2 - b^2;
        (P(1) - xi(2))^2 + (P(2) - yi(2))^2 + (P(3) + zi(2))^2 - b^2;
        (P(1) - xi(3))^2 + (P(2) - yi(3))^2 + (P(3) + zi(3))^2 - b^2
    ];

    P0 = [0, 0, -b];
    options = optimoptions('fsolve', 'Display', 'none');
    P_sol = fsolve(fun, P0, options);

    Xp = P_sol(1);
    Yp = P_sol(2);
    Zp = P_sol(3);
end

   