# SLIDE-x-ML
**S**ystem-**L**evel **I**nfrastructure for HW/SW **D**ataset **E**-**x**traction and **M**achine **L**earning Model Building

<p><img src="img/SLIDE-x-ML-logo.png" width="250" height="250"></p>

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

## Installation instructions

### OVERVIEW
SLIDE-x-ML is an open-source Python tool that facilitates the System-Level HW/SW Co-Design of embedded systems and Cyber-Physical Systems (CPSs) through the creation of HW/SW ML models using machine learning frameworks and tools, including MATLAB Statistics and Machine Learning Toolbox (for MATLAB) and TensorFlow/Keras/PyTorch/Scikit-Learn (for Python). These HW/SW ML models can be used to evaluate HW/SW performance, select the most suitable embedded platform, and perform HW/SW trade-off analysis.

### SLIDE-x Main Components
SLIDE-x consists of the following components:

1. **00-SLIDE-x-Ingestion**: Extensible Python Dataset Ingestion component for collecting datasets generated during the SLIDE-x Profiling/Simulation framework. It also offers functionalities for implementing unified HW/SW metrics (e.g., CC4CS, CC4IR, CC4SSA, CC4OPT, Affinity), performing statistical analysis, and comparing different platforms. The SLIDE-x-Ingestion is composed of:
    - **SILDE-x-Data-Collect-Cleaning**: WIP
    - **SILDE-x-Feature-Engineering**: WIP
    - **SILDE-x-Data-Ingestion**: WIP
3. **SLIDE-x-Model-Engineering**: HW/SW ML-based component for creating System-Level HW/SW Co-Design models using machine learning frameworks and tools. The SLIDE-x-Model-Engineering is composed of:
    - **SILDE-x-Data-Analysis**: WIP
    - **SILDE-x-Data-Preparation**: WIP
    - **SILDE-x-Model-Training-and-Validation**: WIP (Best algorithm Selection and Hyperparameter tuning).
    - **SILDE-x-Model-Export**: WIP

### WEBSITE
[www.HEPSYCODE.com](https://hepsycode.github.io/)

### DOWNLOAD
SLIDE-x is open-source and freely available on GitHub: https://github.com/hepsycode/SLIDE-x-ML.

### GETTING STARTED GUIDELINES
The framework is implemented in Python3 and uses the csv, os, shutil, subprocess, tkinter libraries for internal operations. Thus, Python3 and the above-listed libraries should be installed for the framework to run properly. 

### RELEASE NOTES
Latest Release: 2.0.0
 
### LICENSE
GNU GENERAL PUBLIC LICENSE Version 3, 29 June 2007 (see https://www.gnu.org/licenses/gpl-3.0.en.html)
 
### DEVELOPER RESOURCES
Source Repositories: [https://github.com/hepsycode/SLIDE-x](https://github.com/hepsycode/SLIDE-x)

- Clone: 
    - ssh: [git@github.com:hepsycode/SLIDE-x.git](git@github.com:hepsycode/SLIDE-x-ML.git)
    - https: [https://github.com/hepsycode/SLIDE-x.git](https://github.com/hepsycode/SLIDE-x-ML.git)
 
You can use the code from these repositories to experiment, test, build, and create patches, and issue pull requests (only by request).
For any bug or doubt, contact us or open an issue.

### SUPPORT
We currently support:

 1. Email: 
    - Vittoriano Muttillo:
       - vittoriano.muttillo@guest.univaq.it,
       - vmuttillo@unite.it
       - vittoriano.muttillo@gmail.com
    - Vincenzo Stoico:
    	- v.stoico@vu.nl
    - (please take care to use \[SLICE-x SUPPORT\] as object
 2. Issues on GitHub

## Additional information
Research publications are available at https://hepsycode.github.io/ and http://www.pomante.net/sito_gg/Publications.htm

## How to Cite?
If you use SLIDE-x in your research, please cite:
```
@inproceedings{10.1145/3427921.3450258,
author = {Muttillo, Vittoriano and Giammatteo, Paolo and Stoico, Vincenzo},
title = {Statement-Level Timing Estimation for Embedded System Design Using Machine Learning Techniques},
year = {2021},
isbn = {9781450381949},
publisher = {Association for Computing Machinery},
address = {New York, NY, USA},
url = {https://doi.org/10.1145/3427921.3450258},
doi = {10.1145/3427921.3450258},
booktitle = {Proceedings of the ACM/SPEC International Conference on Performance Engineering},
pages = {257–264},
numpages = {8},
keywords = {timing performance prediction, machine learning, feature analysis, embedded system},
location = {Virtual Event, France},
series = {ICPE '21}
}
```
