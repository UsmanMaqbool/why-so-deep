# Possible Errors:

## CUDA

if there is NVCC error, Download and install CUDA toolkit or try installing Cudatoolkit like;

```sh
sudo apt install nvidia-cuda-toolkit

```

## GCC Fix
  
  [Useful guide to install specific version of gcc](https://unix.stackexchange.com/questions/410723/how-to-install-a-specific-version-of-gcc-in-kali-linux)

  GCC 7 is available on linux it can be installed as follow :
  
  ```
  sudo apt install g++-7 gcc7 g++-8 gcc8
  ```    

  To switch between gcc7 or gcc8

  ```
  sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 1 --slave /usr/bin/g++ g++ /usr/bin/g++-8
  sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-9 2 --slave /usr/bin/g++ g++ /usr/bin/g++-9
  sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 1 --slave /usr/bin/g++ g++ /usr/bin/g++-7
  sudo update-alternatives --config gcc

  # sample output:
  Selection |       Path       | Priority  | Status
  ----------|------------------|-----------|-----------
  * 0       |  /usr/bin/gcc-9  |     2     | auto mode
  1         |  /usr/bin/gcc-6  |     2     | manual mode
  2         |  /usr/bin/gcc-7  |     1     | manual mode

  Press <enter> to keep the current choice[*], or type selection number: 2
  ```  
