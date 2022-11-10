function plot_vec(root,item,seq)
    %disp(root)
    %path = string(strcat(root,'\cube_v.csv'));
    %disp(path)
    target = strcat(strcat('\cube_',item),'.csv');
    Velocity = readtable(string(strcat(root,target)));
    Velocity = Velocity{:,:};
    disp('velocity, force, whatever you asked')
    disp(Velocity)
    Velocity = normr(Velocity);
    U = Velocity(:,1);
    V = Velocity(:,2);
    W = Velocity(:,3);
    Position = readtable(string(strcat(root,'\cube_p.csv')));
    Position = Position{:,:};
    disp('p_s')
    disp(Position)
    Pos(:,1) = Position(:,1);
    Pos(:,2) = Position(:,3);
    Pos(:,3) = Position(:,2);
    X = Position(:,1);
    Y = Position(:,2);
    Z = Position(:,3);
    
    hold on
    
    tetramesh([1 2 3 4],Pos,'FaceAlpha',0.1)
    labels = ['a'; 'b'; 'c'; 'd'];
    text(X,Z,Y,labels)
    quiver3(X,Z,Y,U,W,V,0,'color',[0 0 1])
    legend('tet',item)
   

    view(-40,20)
    axis equal
    hold off
        axis([-2,2,-2,2,-2,2]);
    img_path = save_img_path(root,seq);
    saveas(gcf,img_path);
end