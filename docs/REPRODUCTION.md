# Reproduction

### Prerequisite

* Firstly make sure, you have followed [installation](/home/leo/usman_ws/why-so-deep/docs/INSTALL.md) guide. and downloaded [datasets and pre-trained models](#dataset-and-pre-trained-models). 
* Set correct paths in `localpaths.m` 
  - `datasets_directory` (Main directory of all the datasets).
  - `paths.m_directory`  (Pre-computed MAQBOOL data). Create a directory structure shown below.
        
        maqbool-data
        ├── models
        ├── post_computed_files #fast verify results
        └── pre_computed_files  #fast results
    On our [project page](https://usmanmaqbool.github.io/why-so-deep/#precomputed-files), you can download `pre_computed` and `post_computed` files. If you just want to test the results.

 * **Dataset and Pre-trained Models**
    - Please download pre-trained models and datasets (Pittsburgh, Tokyo247 and ToykoTM) from [NetVLAD project website](https://www.di.ens.fr/willow/research/netvlad/). 
    - We have used `VGG-16 + NetVLAD + whitening` models only as it has top NetVLAD performance.

* Rename `localPaths.setup`->`localPaths.m` in the `maqbool` home directory. Update paths of datasets folders of `datasets_directory`(datasets path) and `m_directory`(to store computed data / checkpoints).


### Training and Testing

* To run the main file, open MATLAB and run `run main_wsd.m`. 

#### Training MAQBOOL Layer
MAQBOOL PDL layer is Trained using TOKYOTM dataset. First 250 test samples are taken. 

If you didn't download/use from our project page, it will start train and create a model based on first 250 samples of TOKYOTM datasets.

#### Testing on different datasets

Add configuration in the `config_wsd.m` file before testing. For instance, if you want to use model trained on pittsburgh datasets and test on Tokyo datasets at feature dimension 512. So the configuration will be

`net_dataset = 'pitts30k';` % use `tokyoTM` if you want to use the tokyo based pre-trained model.
`job_datasets = 'tokyo247';`  % use 'pitts30k' if you want to test on pitts30k.
`f_dimension = 512;`   % use '4096', if you want to test on 4k feature dimension.