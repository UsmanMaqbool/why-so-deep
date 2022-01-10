function m_opts= run_config(paths)
    
   
    % Controlling parameters
    %-------------------------------------------------
    % % Select feature dimension
    % f_dimension can be '512' or '4096'
     
    % % Select pre-trained model
    % net_dataset can be % tokyoTM' or 'pitts30k'
    
    % % Test model on
    % test_on can be 'pitts30k' or 'tokyo247'
    %-------------------------------------------------
    
    %% To Run select on of these
    
    % % Tokyo 24/7 at 512-D
    net_dataset = 'tokyoTM'; test_on = 'tokyo247'; f_dimension = 512;

    % % Tokyo 24/7 at 4096-D
    % net_dataset = 'tokyoTM'; test_on = 'tokyo247'; f_dimension = 4096; 

    % % Pitts on Tokyo 24/7 at 512-D
    % net_dataset = 'pitts30k';  test_on = 'tokyo247'; f_dimension = 512; 
    
    % % Pitts on Tokyo 24/7 at 4096-D
    %net_dataset = 'pitts30k'; test_on = 'tokyo247'; f_dimension = 4096; 
    
    % % Pitts250k at 512-D 
    %net_dataset = 'pitts30k'; test_on = 'pitts30k'; f_dimension = 512; 
    
    % % Pitts250k at 4096-D
    %net_dataset = 'pitts30k'; test_on = 'pitts30k'; f_dimension = 4096; 
    
    

    
    %%
    m_on = 'tokyoTM'; % MAQBOOL DT Model created using TokyoTM test dataset.
    m_limit = 250; % use ground truth till 250 of `m_on` for creating decision tree
    show_output = 0;      % To show the output thumbnails (it requires adding breakpoints on line 430 of m_recallAtN.m file
    proj = 50; 
    
    if f_dimension == 4096
        m_alpha = 0.31;
    else
        m_alpha = 1.15;
    end

    % Network
    pre_net = 'vd16';
    job_net = strcat(pre_net,'_',net_dataset);
    if strcmp(job_net,'vd16_pitts30k')
        % PITTSBURGH DATASET
       netID= 'vd16_pitts30k_conv5_3_vlad_preL2_intra_white';
    elseif strcmp(job_net,'vd16_tokyoTM')
        % TOKYO DATASET
        netID= 'vd16_tokyoTM_conv5_3_vlad_preL2_intra_white';
    end

    if strcmp(test_on,'pitts30k')
        dbTest= dbPitts('30k','test');
        datasets_path =  paths.dsetRootPitts;
        image_folder = 'images';
        query_folder = 'queries';
    elseif strcmp(test_on,'tokyo247')
        dbTest= dbTokyo247();
        datasets_path = paths.dsetRootTokyo247; 
        image_folder = 'images';
        query_folder = 'query';
    end
    %%
    m_directory = paths.m_directory; % Save MAQBOOL files
    
    save_mdl = strcat(m_directory,'models/', job_net,'_to_',m_on,'_',int2str(f_dimension),'_',int2str(proj),'_mdls.mat');
    save_post_computed_mdl = strcat(m_directory,'post_computed_files/',job_net,'_to_',m_on,'_',int2str(f_dimension),'_',int2str(proj),'_data.mat');
    save_pre_computed_mdl = strcat(m_directory,'pre_computed_files/',job_net,'_to_',m_on,'_',int2str(f_dimension),'_',int2str(proj));
    save_pre_computed = strcat(m_directory,'pre_computed_files/',job_net,'_to_',test_on,'_',int2str(f_dimension),'_',int2str(proj));
    save_post_computed = strcat(m_directory,'post_computed_files/',job_net,'_to_',test_on,'_',int2str(f_dimension),'_',int2str(proj));
        
    % Save result for tikz latex
    m_results_50_fname = strcat('results/',job_net,'_to_',test_on,'_maqbool_DT_50_',int2str(f_dimension),'.dat');
    m_results_100_fname = strcat('results/',job_net,'_to_',test_on,'_maqbool_DT_100_',int2str(f_dimension),'.dat');
    netvlad_results_fname = strcat('results/',job_net,'_to_',test_on,'_netvlad_',int2str(f_dimension),'.dat');
    save_results = strcat('results/',job_net,'_to_',test_on,'_both_results_',int2str(f_dimension),'.mat');
    plot_title = strcat(job_net,'_to_',test_on,'_',int2str(f_dimension));
        
    iTestSample_Start= 1; % Testing Images Index
    startfrom = 1;        % NetVLAD recall images index  

    %%
    m_opts = struct(...
                'm_directory',              m_directory, ...
                'netID',                    netID, ...
                'proj',                     proj, ...
                'job_net',                  job_net, ...
                'test_on',                  test_on, ...
                'datasets_path',            datasets_path, ...
                'plot_title',               plot_title, ...
                'm_limit',                  m_limit, ...
                'save_pre_computed',        save_pre_computed, ...
                'save_results',             save_results, ...
                'm_alpha',                  m_alpha, ...
                'save_post_computed_mdl',   save_post_computed_mdl, ...
                'save_pre_computed_mdl',    save_pre_computed_mdl, ...
                'save_mdl',                 save_mdl, ...
                'save_post_computed',       save_post_computed, ...
                'm_d_results_fname',        m_results_50_fname, ...
                'm_r_results_fname',        m_results_100_fname, ...
                'netvlad_results_fname',    netvlad_results_fname, ...
                'vt_type',                  3, ...
                'iTestSample_Start',        iTestSample_Start, ...
                'startfrom',                startfrom, ...
                'show_output',              show_output, ...
                'query_folder',             query_folder, ...
                'image_folder',             image_folder, ...
                'dbTest',                   dbTest, ...
                'cropToDim',                f_dimension, ...
                'm_on',                     m_on, ....    
                'create_Model',             0 ...
                );


end
