# Installation
Install Support (Ubuntu 20.04, Matlab 2019b, Cuda Driver 10.1)

```
git clone https://github.com/UsmanMaqbool/Maqbool.git
```
### Install Prerequisites

```sh
cd maqbool/3rd-party-support
```

clone these repositiories [NetVLAD](#netvlad), [Edge Boxes](#edge-boxes), [Edges Boxes Toolbox](#edge-boxes-toolbox) and [Matconvnet](#Matconvnet) into the `3rd-party-support`. Please follow the installation and configuration below.

#### NetVLAD
```
git clone https://github.com/Relja/netvlad.git
cd netvlad && git clone https://github.com/Relja/relja_matlab.git
```
Download the databases file (tokyo247.mat) and set the correct dsetSpecDir in localPaths.m and also add paths. 

#### Edge Boxes
```
cd maqbool/3rd-party-support
git clone https://github.com/zchrissirhcz/edges
```
Not official edges, but fixed error for matlab > 2017
Run in MATLAB
```matlab
cd edges
run linux_startup.m
```

#### Edge Boxes Toolbox
```
cd maqbool/3rd-party-support
git clone https://github.com/zchrissirhcz/toolbox.git
```
```matlab
cd toolbox
run linux_startup.m
```

#### Matconvnet
```
cd maqbool/3rd-party-support
git clone https://github.com/vlfeat/matconvnet.git
```
[Ful Instuctions to install matconvnet](https://www.vlfeat.org/matconvnet/install/)

For centos OS, please use previous version `wget https://github.com/vlfeat/matconvnet/archive/v1.0-beta18.zip`

Run in MATLAB
```matlab
cd 3rd-party-support/matconvnet
addpath matlab 
vl_compilenn('enableGpu', true)
```

## Cuda 
- Check cuda toolkit according to your matlab version [ref](https://www.mathworks.com/help/parallel-computing/gpu-support-by-release.html)
