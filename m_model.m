function m_model(m_config) 
    
    fprintf( 'Creating m Model \n')

    load(m_config.save_post_computed_mdl,'data');
    
    HH = [];
    for i = 1:size(data,2)
        XX = data(i).X';
        XX = reshape(XX,1,[]);
        HH = [HH ; data(i).pre data(i).H XX double(data(i).Y)];
    end
    GT = HH(1:25000,:);
    
    Data = array2table(GT);
    mdls{1} = TreeBagger(50,Data,'GT113','Method','regression','OOBPrediction','On');  
    mdls{2} = TreeBagger(100,Data,'GT113','Method','regression', 'OOBPrediction','On');  
    check_folder = fileparts(m_config.save_mdl);
    if ~exist(check_folder, 'dir')
       mkdir(check_folder)
    end
    save(m_config.save_mdl,'mdls');
    fprintf( 'm Model is created. \n')
end