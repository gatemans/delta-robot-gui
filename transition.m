function [px1,py1,pz1,px2,py2,pz2]= transition(hx,hy,hz,dx,dy,dz)
    [P1AngleX,P1AngleY,P1AngleZ]=inverseKinematics(hx,hy,hz);
    [P2AngleX,P2AngleY,P2AngleZ]=inverseKinematics(dx,dy,dz);
    
    px1=P1AngleX;
    py1=P1AngleY;
    pz1=P1AngleZ;
    %
    px2=P2AngleX-P1AngleX;
    py2=P2AngleY-P1AngleY;
    pz2=P2AngleZ-P1AngleZ;

end
