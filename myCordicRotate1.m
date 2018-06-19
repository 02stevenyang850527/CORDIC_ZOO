function v = myCordicRotate1(theta, u, niters)
    % Linear and Rotation mode
    x = real(u); y = imag(u);
    for iter=0:niters-1
        angle = 2^(-iter);
        if (theta > 0)
            new_y = y + x*(2^(-iter));
            theta = theta - angle;
        else
            new_y = y - x*(2^(-iter));
            theta = theta + angle;
        end
        y = new_y;
    end
    v = y;
end