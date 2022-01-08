%% Taken from NetVLAD and Updated by Usman
%  datasets_directory (Main directory of all the datasets)
%  paths.m_directory  (Pre-computed MAQBOOL data)

%%
function paths= localPaths()
    
    % Give Path
    datasets_directory = '/mnt/ssd/usman_ws/datasets/maqbool-datasets/datasets-place-recognition/';    
    paths.m_directory = '/mnt/ssd/usman_ws/maqbool-data-web/'; % Save MAQBOOL files

    % --- dependencies
    
    % refer to README.md for the information on dependencies
    paths.libReljaMatlab= 'depends/relja_matlab/';
    paths.libMatConvNet= '3rd-party-support/matconvnet/'; % should contain matlab/
    
    % If you have installed yael_matlab (**highly recommended for speed**),
    % provide the path below. Otherwise, provide the path as 'yael_dummy/':
    % this folder contains my substitutes for the used yael functions,
    % which are **much slower**, and only included for demonstration purposes
    % so do consider installing yael_matlab, or make your own faster
    % version (especially of the yael_nn function)
    paths.libYaelMatlab= 'yael_dummy/';
    
    % --- dataset specifications
    paths.dsetSpecDir= strcat(datasets_directory,'datasets-specs');

    % --- dataset locations

    paths.dsetRootPitts= strcat(datasets_directory,'Test_Pitts250k/'); % should contain images/ and queries/

    paths.dsetRootTokyo247= strcat(datasets_directory,'Test_247_Tokyo_GSV/'); % should contain images/ and query/

    paths.dsetRootTokyoTM= strcat(datasets_directory,'tokyoTimeMachine/'); % should contain images/

    paths.dsetRootOxford= strcat(datasets_directory,'oxbuild_images/'); % should contain images/ and groundtruth/, and be writable
      
    paths.dsetRootParis= strcat(datasets_directory,'paris/'); % should contain images/ (with subfolders defense, eiffel, etc), groundtruth/ and corrupt.txt, and be writable
   
    paths.dsetRootHolidays= strcat(datasets_directory,'Holidays/'); % should contain jpg/ for the original holidays, or jpg_rotated/ for rotated Holidays, and be writable
    
    % --- our networks
    % models used in our paper, download them from our research page   
    paths.ourCNNs= strcat(datasets_directory,'models_v103_pre-trained/');

    % --- pretrained networks
    % off-the-shelf networks trained on other tasks, available from the MatConvNet
    % website: http://www.vlfeat.org/matconvnet/pretrained/
    % XPS
    paths.pretrainedCNNs= strcat(datasets_directory,'netvlad-original/pretrained/');
    
    % --- initialization data (off-the-shelf descriptors, clusters)
    % Not necessary: these can be computed automatically, but it is recommended
    % in order to use the same initialization as we used in our work
    paths.initData= strcat(datasets_directory,'netvlad-pre-data/initdata/');
    
    % --- output directory
    % XPS
    paths.outPrefix= strcat(datasets_directory,'netvlad-original-output/');

  
end
