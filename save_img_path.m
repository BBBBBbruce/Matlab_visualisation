function file_p = save_img_path(root, seq)
    root_c = char(root);
    root_c = root_c(1:end-4);
    folder_path = root_c+"matfigs\";
    folder_path = folder_path{1};
    if ~exist(folder_path, 'dir')
       mkdir(folder_path);
    end
    file_p = folder_path+"img"+string(seq)+".png";
end