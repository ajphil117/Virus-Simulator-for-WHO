function draw(CA, handle, mymap, ax)
    handle.CData = CA;
    %set(handle, 'cdata', A, mymap);
    drawnow
    colormap(ax, mymap)
end