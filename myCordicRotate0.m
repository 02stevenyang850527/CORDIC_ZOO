function v = myCordicRotate0(theta, u, niters)
    % Circular and Rotation mode    
    x = real(u); y = imag(u);
    for iter=0:niters-1
        angle = atan(2^(-iter));
        if (theta > 0)
            new_x = x - y*(2^(-iter));
            new_y = y + x*(2^(-iter));
            theta = theta - angle;
        else
            new_x = x + y*(2^(-iter));
            new_y = y - x*(2^(-iter));
            theta = theta + angle;
        end
        x = new_x;
        y = new_y;
    end
    
    if (niters==1)
        x = 0.7071*x;
        y = 0.7071*y;
    elseif (niters==2)
        x = 0.6325*x;
        y = 0.6325*y;
    elseif (niters==3)
        x = 0.6136*x;
        y = 0.6136*y;
    elseif (niters==4)
        x = 0.6088*x;
        y = 0.6088*y;
    elseif (niters==5)
        x = 0.6076*x;
        y = 0.6076*y;
    else
        x = 0.6073*x;
        y = 0.6073*y;
    end
    v = x + y*1i;
end