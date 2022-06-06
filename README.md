# Why-So-Deep

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

Documentation is available at . Please follow the [installation](docs/INSTALL.md).

#### Official implementation:
* [Why-So-Deep](https://usmanmaqbool.github.io/why-so-deep): Towards Boosting Previously Trained Models for Visual Place Recognition (RA-L 2022) [[Arxiv]](https://arxiv.org/abs/2201.03212) [[project website](https://usmanmaqbool.github.io/why-so-deep)]

#### Installation

Please refer to [INSTALL.md](docs/INSTALL.md) for installation and dataset preparation.

#### Train & Test

To reproduce the results in papers, you could train and test the models following the instruction in [REPRODUCTION.md](docs/REPRODUCTION.md).
#### Results


<table cellspacing="0" border="0">
	<colgroup width="118"></colgroup>
	<colgroup width="157"></colgroup>
	<colgroup width="77"></colgroup>
	<colgroup width="69"></colgroup>
	<colgroup width="76"></colgroup>
	<colgroup width="95"></colgroup>
	<colgroup width="69"></colgroup>
	<colgroup width="76"></colgroup>
	<tr>
		<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000" rowspan=2 height="34" align="center" valign=middle><b>Method</b></td>
		<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000" rowspan=2 align="center" valign=middle><b>Whitening</b></td>
		<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000" colspan=3 align="center" valign=middle><b>Tokyo 24/7</b></td>
		<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-right: 1px solid #000000" colspan=3 align="center" valign=middle><b>Pitts250k-test</b></td>
		</tr>
	<tr>
		<td style="border-bottom: 1px solid #000000" align="left" valign=bottom><i>Recall@1</i></td>
		<td style="border-bottom: 1px solid #000000" align="left" valign=bottom><i>Recall@5</i></td>
		<td style="border-bottom: 1px solid #000000" align="left" valign=bottom><i>Recall@10</i></td>
		<td style="border-bottom: 1px solid #000000" align="left" valign=bottom><i>Recall@1</i></td>
		<td style="border-bottom: 1px solid #000000" align="left" valign=bottom><i>Recall@5</i></td>
		<td style="border-bottom: 1px solid #000000; border-right: 1px solid #000000" align="left" valign=bottom><i>Recall@10</i></td>
	</tr>
	<tr>
		<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000" rowspan=2 height="34" align="center" valign=middle><b>Sum pooling</b></td>
		<td style="border-top: 1px solid #000000" align="left" valign=bottom>PCA whitening</td>
		<td style="border-top: 1px solid #000000" align="right" valign=bottom sdval="44.76" sdnum="1033;">44.76</td>
		<td style="border-top: 1px solid #000000" align="right" valign=bottom sdval="60.95" sdnum="1033;">60.95</td>
		<td style="border-top: 1px solid #000000" align="right" valign=bottom sdval="70.16" sdnum="1033;">70.16</td>
		<td style="border-top: 1px solid #000000" align="right" valign=bottom sdval="74.13" sdnum="1033;">74.13</td>
		<td style="border-top: 1px solid #000000" align="right" valign=bottom sdval="86.44" sdnum="1033;">86.44</td>
		<td style="border-top: 1px solid #000000; border-right: 1px solid #000000" align="right" valign=bottom sdval="90.18" sdnum="1033;">90.18</td>
	</tr>
	<tr>
		<td style="border-bottom: 1px solid #000000" align="left" valign=bottom>PCA-pw</td>
		<td style="border-bottom: 1px solid #000000" align="right" valign=bottom sdval="52.7" sdnum="1033;">52.7</td>
		<td style="border-bottom: 1px solid #000000" align="right" valign=bottom sdval="67.3" sdnum="1033;">67.3</td>
		<td style="border-bottom: 1px solid #000000" align="right" valign=bottom sdval="73.02" sdnum="1033;">73.02</td>
		<td style="border-bottom: 1px solid #000000" align="right" valign=bottom sdval="75.63" sdnum="1033;">75.63</td>
		<td style="border-bottom: 1px solid #000000" align="right" valign=bottom sdval="88.01" sdnum="1033;">88.01</td>
		<td style="border-bottom: 1px solid #000000; border-right: 1px solid #000000" align="right" valign=bottom sdval="91.75" sdnum="1033;">91.75</td>
	</tr>
	<tr>
		<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000" rowspan=2 height="34" align="center" valign=middle><b>NetVLAD</b></td>
		<td style="border-top: 1px solid #000000" align="left" valign=bottom>PCA whitening</td>
		<td style="border-top: 1px solid #000000" align="right" valign=bottom sdval="56.83" sdnum="1033;">56.83</td>
		<td style="border-top: 1px solid #000000" align="right" valign=bottom sdval="73.02" sdnum="1033;">73.02</td>
		<td style="border-top: 1px solid #000000" align="right" valign=bottom sdval="78.41" sdnum="1033;">78.41</td>
		<td style="border-top: 1px solid #000000" align="right" valign=bottom sdval="80.66" sdnum="1033;">80.66</td>
		<td style="border-top: 1px solid #000000" align="right" valign=bottom sdval="90.88" sdnum="1033;">90.88</td>
		<td style="border-top: 1px solid #000000; border-right: 1px solid #000000" align="right" valign=bottom sdval="93.06" sdnum="1033;">93.06</td>
	</tr>
	<tr>
		<td style="border-bottom: 1px solid #000000" align="left" valign=bottom>PCA-pw</td>
		<td style="border-bottom: 1px solid #000000" align="right" valign=bottom sdval="58.73" sdnum="1033;">58.73</td>
		<td style="border-bottom: 1px solid #000000" align="right" valign=bottom sdval="74.6" sdnum="1033;">74.6</td>
		<td style="border-bottom: 1px solid #000000" align="right" valign=bottom sdval="80.32" sdnum="1033;">80.32</td>
		<td style="border-bottom: 1px solid #000000" align="right" valign=bottom sdval="81.95" sdnum="1033;">81.95</td>
		<td style="border-bottom: 1px solid #000000" align="right" valign=bottom sdval="91.65" sdnum="1033;">91.65</td>
		<td style="border-bottom: 1px solid #000000; border-right: 1px solid #000000" align="right" valign=bottom sdval="93.76" sdnum="1033;">93.76</td>
	</tr>
	<tr>
		<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000" rowspan=2 height="34" align="center" valign=middle><b>APANet</b></td>
		<td style="border-top: 1px solid #000000" align="left" valign=bottom>PCA whitening</td>
		<td style="border-top: 1px solid #000000" align="right" valign=bottom sdval="61.9" sdnum="1033;">61.9</td>
		<td style="border-top: 1px solid #000000" align="right" valign=bottom sdval="77.78" sdnum="1033;">77.78</td>
		<td style="border-top: 1px solid #000000" align="right" valign=bottom sdval="80.95" sdnum="1033;">80.95</td>
		<td style="border-top: 1px solid #000000" align="right" valign=bottom sdval="82.32" sdnum="1033;">82.32</td>
		<td style="border-top: 1px solid #000000" align="right" valign=bottom sdval="90.92" sdnum="1033;">90.92</td>
		<td style="border-top: 1px solid #000000; border-right: 1px solid #000000" align="right" valign=bottom sdval="93.79" sdnum="1033;">93.79</td>
	</tr>
	<tr>
		<td style="border-bottom: 1px solid #000000" align="left" valign=bottom>PCA-pw</td>
		<td style="border-bottom: 1px solid #000000" align="right" valign=bottom sdval="66.98" sdnum="1033;">66.98</td>
		<td style="border-bottom: 1px solid #000000" align="right" valign=bottom sdval="80.95" sdnum="1033;"><b>80.95</b></td>
		<td style="border-bottom: 1px solid #000000" align="right" valign=bottom sdval="83.81" sdnum="1033;">83.81</td>
		<td style="border-bottom: 1px solid #000000" align="right" valign=bottom sdval="83.65" sdnum="1033;">83.65</td>
		<td style="border-bottom: 1px solid #000000" align="right" valign=bottom sdval="92.56" sdnum="1033;">92.56</td>
		<td style="border-bottom: 1px solid #000000; border-right: 1px solid #000000" align="right" valign=bottom sdval="94.7" sdnum="1033;">94.7</td>
	</tr>
	<tr>
		<td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000" rowspan=2 height="34" align="center" valign=middle><b>MAQBOOL (ours)</b></td>
		<td style="border-top: 1px solid #000000" align="left" valign=bottom>PCA whitening + DT-50</td>
		<td style="border-top: 1px solid #000000" align="right" valign=bottom sdval="68.25" sdnum="1033;">68.25</td>
		<td style="border-top: 1px solid #000000" align="right" valign=bottom sdval="79.37" sdnum="1033;">79.37</td>
		<td style="border-top: 1px solid #000000" align="right" valign=bottom sdval="83.49" sdnum="1033;">83.49</td>
		<td style="border-top: 1px solid #000000" align="right" valign=bottom sdval="85.45" sdnum="1033;">85.45</td>
		<td style="border-top: 1px solid #000000" align="right" valign=bottom sdval="92.62" sdnum="1033;">92.62</td>
		<td style="border-top: 1px solid #000000; border-right: 1px solid #000000" align="right" valign=bottom sdval="94.58" sdnum="1033;">94.58</td>
	</tr>
	<tr>
		<td style="border-bottom: 1px solid #000000" align="left" valign=bottom>PCA whitening + DT-100</td>
		<td style="border-bottom: 1px solid #000000" align="right" valign=bottom sdval="69.21" sdnum="1033;"><b>69.21</b></td>
		<td style="border-bottom: 1px solid #000000" align="right" valign=bottom sdval="80.32" sdnum="1033;">80.32</td>
		<td style="border-bottom: 1px solid #000000" align="right" valign=bottom sdval="84.44" sdnum="1033;"><b>84.44</b></td>
		<td style="border-bottom: 1px solid #000000" align="right" valign=bottom sdval="85.46" sdnum="1033;"><b>85.46</b></td>
		<td style="border-bottom: 1px solid #000000" align="right" valign=bottom sdval="92.77" sdnum="1033;"><b>92.77</b></td>
		<td style="border-bottom: 1px solid #000000; border-right: 1px solid #000000" align="right" valign=bottom sdval="94.72" sdnum="1033;"><b>94.72</b></td>
	</tr>
</table>

If you want to add MAQBOOL results, tested on Pittsburgh and Tokyo247 dataset, in comparison with your work at 4096-D and 512-D. You can use the `dat` files in the `results` folder. 
Names of these `dat` files are explained in our [project page](https://usmanmaqbool.github.io/why-so-deep), so that you can easily use. 
Furthermore, if you need help in plotting the results using Tikz and latex, please follow this [little tutorial](https://usmanmaqbool.github.io/how-to-add-tikz-graphs-in-latex/).

#### License

`Why-So-Deep` is released under the [MIT license](LICENSE).


#### Citation

If you find this repo useful for your research, please consider citing the paper
```bib
@article{whysodeepBhutta22,
 author={Bhutta, M. Usman Maqbool and Sun, Yuxiang and Lau, Darwin and Liu, Ming},
  journal={IEEE Robotics and Automation Letters}, 
  title={Why-So-Deep: Towards Boosting Previously Trained Models for Visual Place Recognition}, 
  year={2022},
  volume={7},
  number={2},
  pages={1824-1831},
  doi={10.1109/LRA.2022.3142741}}
```

#### Acknowledgements

The structure of this repo is inspired by [NetVLAD](https://github.com/Relja/netvlad).


Documentation is available at [project website](https://usmanmaqbool.github.io/why-so-deep). Please follow the [installation](#installation) guide below.
