function plot_vec(root)
    %disp(root)
    %path = string(strcat(root,'\cube_v.csv'));
    %disp(path)
    Velocity = readtable(string(strcat(root,'\cube_v.csv')));
    Velocity = Velocity{:,:};
    U = Velocity(:,1);
    V = Velocity(:,2);
    W = Velocity(:,3);
    Position = readtable(string(strcat(root,'\cube_p.csv')));
    Position = Position{:,:};
    Pos(:,1) = Position(:,1);
    Pos(:,2) = Position(:,3);
    Pos(:,3) = Position(:,2);
    X = Position(:,1);
    Y = Position(:,2);
    Z = Position(:,3);
    
    hold on
    tetramesh([1 2 3 4],Pos,'FaceAlpha',0.1)
    quiver3(X,Z,Y,U,W,V,0,'color',[0 0 1])
    view(-40,20)
    axis equal
    hold off
end