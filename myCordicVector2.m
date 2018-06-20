function v = myCordicVector2(u, niters)
    % Hyperbolic and Vectoring mode    
    x = real(u); y = imag(u);
    z = 0;
    k = 4; % Used for (3k+1) iterations steps
    for iter=1:niters
        angle = atanh(2^(-iter));
        if (y > 0)
            new_x = x - y*(2^(-iter));
            new_y = y - x*(2^(-iter));
            z = z + angle;
        else
            new_x = x + y*(2^(-iter));
            new_y = y + x*(2^(-iter));
            z = z - angle;
        end
        x = new_x;
        y = new_y;
        
        if (iter==k)
            if (z > 0)
                new_x = x - y*(2^(-iter));
                new_y = y - x*(2^(-iter));
                z = z + angle;
            else
                new_x = x + y*(2^(-iter));
                new_y = y + x*(2^(-iter));
                z = z - angle;
            end
            x = new_x;
            y = new_y;
            k = 3*k+1;
        end
        
    end
    
    if (niters==1)
        x = 1/0.8660*x;
    elseif (niters==2)
        x = 1/0.8385*x;
    elseif (niters==3)
        x = 1/0.8319*x;
    elseif (niters==4)
        x = 1/0.8303*x;
    else
        x = 1/0.8298*x;
    end
    
    v = x + z*1i;
end