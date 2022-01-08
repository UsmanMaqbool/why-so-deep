# Why-So-Deep


* MAQBOOL Working fine
* MAQBOOL -2 UPDATED - NEED TO FIX


<h1 align="center">
  <p align="center">MAQBOOL</p>
  <a href="https://usmanmaqbool.github.io/why-so-deep"><img src="https://usmanmaqbool.github.io/assets/images/maqbool/maqbool.png" alt="why-so-deep" style="height: 164px;"></a>
  
</h1>
<p align="center">Multiple AcuQitation of perceptiBle regiOns for priOr Learning </p>
<p align="center">
  ⭐️ If you like MAQBOOL, give it a star on GitHub! ⭐️
  <br>
  <a href="https://twitter.com/MUsmanMBhutta"><img src="https://img.shields.io/twitter/follow/MUsmanMBhutta.svg?style=social" alt="Twitter Follow" /></a>
  <a href="#license"><img src="https://img.shields.io/github/license/sourcerer-io/hall-of-fame.svg?colorB=ff0000"></a>
</p>

Documentation is available at [project website](https://usmanmaqbool.github.io/why-so-deep). Please follow the [installation](#installation) guide below.

Test
## Prerequisite

* Firstly make sure, you have followed [installation](#installation) guide and downloaded [datasets and pre-trained models](#dataset-and-pre-trained-models). 
* Set correct paths in `localpaths.m` 
  - `datasets_directory` (Main directory of all the datasets).
  - `paths.m_directory`  (Pre-computed MAQBOOL data). Create a directory structure shown below.
        
        maqbool-data
        ├── models
        ├── post_computed_files #for very fast results
        └── pre_computed_files  #for fast results

    On our [project page](https://usmanmaqbool.github.io/why-so-deep), you can download `pre_computed` and `post_computed` files.

  or you can rename `localPaths.m.setup`->`localPaths.m` in the `maqbool` home directory. Update paths of datasets folders of `datasets_directory`(datasets path) and `m_directory`(to store computed data / checkpoints).

## Testing on different datasets

Add configuration in the `config_wsd.m` file before testing. For instance, if you want to use model trained on pittsburgh datasets and test on Tokyo datasets at feature dimension 512. So the configuration will be

`net_dataset = 'pitts30k';` % use `tokyoTM` if you want to use the tokyo based pre-trained model.
`job_datasets = 'tokyo247';`  % use 'pitts30k' if you want to test on pitts30k.
`f_dimension = 512;`   % use '4096', if you want to test on 4k feature dimension.



* To run the main file, open MATLAB and run `run main_wsd.m`
  
### Dataset and Pre-trained Models

Please download pre-trained models and datasets (Pittsburgh, Tokyo247 and ToykoTM) from [NetVLAD project website](https://www.di.ens.fr/willow/research/netvlad/).

We have used `VGG-16 + NetVLAD + whitening` related models only as it has top NetVLAD performance.

