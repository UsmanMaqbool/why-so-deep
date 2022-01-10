clc;
clear all;

addpath(genpath(pwd));
setup; 

paths= localPaths();
m_config = run_config(paths);

netID = m_config.netID;
load( sprintf('%s%s.mat', paths.ourCNNs, netID), 'net' );


%% Check Maqbool model available
 if ~exist(m_config.save_mdl, 'file')
    if ~exist(m_config.save_post_computed_mdl, 'file')
        %if you dont want to compute, you can download from why-so-deep's project page.
        m_print_level(m_config.save_post_computed_mdl,1); % Download pre-computed files

        m_config.create_Model = true;

        if strcmp(m_config.m_on,'tokyoTM')  
            dbTest= dbTokyoTimeMachine('val');
            m_config.datasets_path = paths.dsetRootTokyoTM; 
            m_config.query_folder = 'images'; 
            m_config.save_pre_computed = m_config.save_pre_computed_mdl;
    
        end
        

        
        qFeatFn = sprintf('%s%s_%s_q.bin', paths.outPrefix, netID, dbTest.name);   % just to create the files in the out folder
        dbFeatFn = sprintf('%s%s_%s_db.bin', paths.outPrefix, netID, dbTest.name);  % just to create the files in the out folder

        % Create models if not available
        if ~exist(qFeatFn, 'file')
            %if you dont want to compute, you can download from why-so-deep's project page.
        %    print_level_wsd(qFeatFn,2); % Download pre-computed files
            net= relja_simplenn_tidy(net); % potentially upgrate the network to the latest version of NetVLAD / MatConvNet
            serialAllFeats(net, dbTest.qPath, dbTest.qImageFns, qFeatFn, 'batchSize', 1); % Tokyo 24/7 query images have different resolutions so batchSize is constrained to 1[recall, ~, ~, opts]= testFromFn(dbTest, dbFeatFn, qFeatFn);
        end

        if ~exist(dbFeatFn, 'file')
            %if you dont want to compute, you can download from why-so-deep's project page.
            print_level_wsd(dbFeatFn,2); % Download pre-computed files
            serialAllFeats(net, dbTest.dbPath, dbTest.dbImageFns, dbFeatFn, 'batchSize', 1); % adjust batchSize depending on your GPU / network size
        end

        m_testFromFn(dbTest, dbFeatFn, qFeatFn, m_config, [], 'cropToDim', m_config.cropToDim);
    end
    m_model(m_config) 
    m_config.create_Model = false;
    m_config = run_config(paths); % Reset to original
end

%% Whole Process
dbTest = m_config.dbTest;
qFeatFn = sprintf('%s%s_%s_q.bin', paths.outPrefix, netID, dbTest.name);   % just to create the files in the out folder
dbFeatFn = sprintf('%s%s_%s_db.bin', paths.outPrefix, netID, dbTest.name);  % just to create the files in the out folder


% Create models if not available
if ~exist(qFeatFn, 'file')
    %if you dont want PhDto compute, you can download from NETVLAD's project page.
    print_level_wsd(qFeatFn,2); % Download pre-computed files
    
    net= relja_simplenn_tidy(net); % potentially upgrate the network to the latest version of NetVLAD / MatConvNet
    serialAllFeats(net, dbTest.qPath, dbTest.qImageFns, qFeatFn, 'batchSize', 1); % Tokyo 24/7 query images have different resolutions so batchSize is constrained to 1[recall, ~, ~, opts]= testFromFn(dbTest, dbFeatFn, qFeatFn);
end

if ~exist(dbFeatFn, 'file')
    %if you dont want to compute, you can download from NETVLAD's project page.
    print_level_wsd(qFeatFn,2); % Download pre-computed files
    
    serialAllFeats(net, dbTest.dbPath, dbTest.dbImageFns, dbFeatFn, 'batchSize', 1); % adjust batchSize depending on your GPU / network size
end

m_config.create_Model = false;

% Use m model
[recalll, ~,recall,allrecalls_m, opts]= m_testFromFn(dbTest, dbFeatFn, qFeatFn, m_config, [], 'cropToDim', m_config.cropToDim);

%[recall, ~, ~, opts]= testFromFn(dbTest, dbFeatFn, qFeatFn);
%plot(opts.recallNs, recall, 'ro-'); grid on; xlabel('N'); ylabel('Recall@N');
%% Results

netvlad_results = [opts.recallNs',recall*100];
m_results_50_fname = [opts.recallNs',allrecalls_m(:,1)*100];
m_results_100_fname = [opts.recallNs',allrecalls_m(:,2)*100];

dlmwrite(m_config.netvlad_results_fname,netvlad_results,'delimiter',' ');
dlmwrite(m_config.m_d_results_fname,m_results_50_fname,'delimiter',' ');
dlmwrite(m_config.m_r_results_fname,m_results_100_fname,'delimiter',' ');
plot(opts.recallNs, allrecalls_m(:,1), 'bs-' , ...
     opts.recallNs, allrecalls_m(:,2), 'gs-', ...
     opts.recallNs, recall, 'k*-' ...
     ); grid on; xlabel('N'); ylabel('Recall@N'); title('hg', 'Interpreter', 'none'); legend({'MAQBOOL-D-50','MAQBOOL-D-100', 'NetVLAD(V)+white'});

plot(opts.recallNs, allrecalls_m(:,1), 'bs-' , ...
     opts.recallNs, allrecalls_m(:,2), 'gs-', ...
     opts.recallNs, recall, 'k*-' ...
     ); grid on; xlabel('N'); ylabel('Recall@N'); title(m_config.plot_title, 'Interpreter', 'none'); legend({'MAQBOOL-D-50','MAQBOOL-D-100', 'NetVLAD(V)+white'});


