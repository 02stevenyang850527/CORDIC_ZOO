function v = myCordicVector0(u, niters)
    % Circular and Vectoring mode    
    x = real(u); y = imag(u);
    z = 0;
    for iter=0:niters-1
        angle = atan(2^(-iter));
        if (y > 0)
            new_x = x + y*(2^(-iter));
            new_y = y - x*(2^(-iter));
            z = z + angle;
        else
            new_x = x - y*(2^(-iter));
            new_y = y + x*(2^(-iter));
            z = z - angle;
        end
        x = new_x;
        y = new_y;
    end
    
    if (niters==1)
        x = 0.7071*x;
    elseif (niters==2)
        x = 0.6325*x;
    elseif (niters==3)
        x = 0.6136*x;
    elseif (niters==4)
        x = 0.6088*x;
    elseif (niters==5)
        x = 0.6076*x;
    else
        x = 0.6073*x;
    end
    v = x + z*1i;
end