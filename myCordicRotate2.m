function v = myCordicRotate2(theta, u, niters)
    % Hyperbolic and Rotation mode    
    x = real(u); y = imag(u);
    k = 4; % Used for (3k+1) iterations steps
    for iter=1:niters
        angle = atanh(2^(-iter));
        if (theta > 0)
            new_x = x + y*(2^(-iter));
            new_y = y + x*(2^(-iter));
            theta = theta - angle;
        else
            new_x = x - y*(2^(-iter));
            new_y = y - x*(2^(-iter));
            theta = theta + angle;
        end
        x = new_x;
        y = new_y;
        
        if (iter==k)
            if (theta > 0)
                new_x = x + y*(2^(-iter));
                new_y = y + x*(2^(-iter));
                theta = theta - angle;
            else
                new_x = x - y*(2^(-iter));
                new_y = y - x*(2^(-iter));
                theta = theta + angle;
            end
            x = new_x;
            y = new_y;
            k = 3*k+1;
        end
        
    end
    
    if (niters==1)
        x = 1/0.8660*x;
        y = 1/0.8660*y;
    elseif (niters==2)
        x = 1/0.8385*x;
        y = 1/0.8385*y;
    elseif (niters==3)
        x = 1/0.8319*x;
        y = 1/0.8319*y;
    elseif (niters==4)
        x = 1/0.8303*x;
        y = 1/0.8303*y;
    else
        x = 1/0.8298*x;
        y = 1/0.8298*y;
    end
    
    v = x + y*1i;
end