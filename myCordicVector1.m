function v = myCordicVector1(u, niters)
    % Linear and Vectoring mode    
    x = real(u); y = imag(u);
    z = 0;
    for iter=0:niters-1
        angle = 2^(-iter);
        if (y > 0)
            new_y = y - x*(2^(-iter));
            z = z + angle;
        else            
            new_y = y + x*(2^(-iter));
            z = z - angle;
        end
        y = new_y;
    end
    
    v = z;
end