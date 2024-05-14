# SLIDE-x-ML
**S**ystem-**L**evel **I**nfrastructure for HW/SW **D**ataset **E**-**x**traction and **M**achine **L**earning Model Building

<p><img src="img/SLIDE-x-ML-logo.png" width="250" height="250"></p>

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

## Installation instructions

### OVERVIEW
SLIDE-x-ML is an open-source Python tool that facilitates the System-Level HW/SW Co-Design of embedded systems and Cyber-Physical Systems (CPSs) through the creation of HW/SW ML models using machine learning frameworks and tools, including MATLAB Statistics and Machine Learning Toolbox (for MATLAB) and TensorFlow/Keras/PyTorch/Scikit-Learn (for Python). These HW/SW ML models can be used to evaluate HW/SW performance, select the most suitable embedded platform, and perform HW/SW trade-off analysis.

### SLIDE-x Main Components
SLIDE-x consists of the following components:

1. **SLIDE-x-Ingestion**: Extensible Python Dataset Ingestion component for collecting datasets generated with the SLIDE-x Profiling/Simulation tool. <!-- It also offers functionalities for implementing unified HW/SW metrics (e.g., CC4CS, CC4IR, CC4SSA, CC4OPT, Affinity), performing statistical analysis, and comparing different platforms. --> The SLIDE-x-Ingestion is composed of:
    - **Collect Raw Data & Clean**: Clean and store the dataset as a CSV file for interoperability between tools (from Python to Matlab or other tools). The folder contains SLIDE-x-RES results (i.e., code profiling, code characteristics, Bambu area and timing metrics along with input C headers and Verilog synthesis files) extracted using the SLIDE-x framework available at the following link: https://github.com/hepsycode/SLIDE-x.
2. **SLIDE-x-Feature-Engineering**: Extensible Python component dedicated to feature creation, data analysis, and feature selection to create datasets useful for ML prediction. The SLIDE-x-Feature-Engineering is composed of:
    - **SILDE-x-Feature-Creation**: Input data are categorized into scalars, arrays, and matrices. All the preceding data are also characterized by their ranges.  While scalar input data, array input data, and range definitions are extracted as-is from the SLIDE-x-RES
files, input data matrices are treated similarly to images in a Convolutional Neural Network. Features are extracted using convolution and subsampling operations.
    - **SILDE-x-Data-Analysis**: Data Analysis (i.e., correlation and heatmaps) are applied to the SLIDE-x-RES framework dataset (comprising 99 features, including 28 features from arrays and 32 values from matrices reduced with CNN)
    - **SILDE-x-Feature-Selection**: Four regressor models are employed for feature analysis. The average value of regression model results, reduced by a confidence interval of 99%, is utilized as the lower bound to select the most important features.
3. **SLIDE-x-Model-Engineering**: HW/SW ML-based component for creating System-Level HW/SW Co-Design models using machine learning frameworks and tools. The SLIDE-x-Model-Engineering is composed of:
    - **SILDE-x-Data-Preparation**: Following the feature analysis process, the most significant features have been considered, and a dataset for each target and FPGA is created.
    - **SILDE-x-Model-Training**: ML algorithms have been trained to predict HLS simulation reports.
    - **SILDE-x-Model-Validation**: ML validation metrics are used to identify the best algorithm and hyperparameter configuration.
    - **SILDE-x-Model-Export**: ML models are deployed for subsequent use in an HW/SW co-design simulation environment.

### WEBSITE
[www.HEPSYCODE.com](https://hepsycode.github.io/)

### DOWNLOAD
SLIDE-x-ML is open-source and freely available on GitHub: https://github.com/hepsycode/SLIDE-x-ML-ICCD.

### GETTING STARTED GUIDELINES
The framework is implemented in Python3 and uses the csv, os, shutil, subprocess, tkinter libraries for internal operations. Thus, Python3 and the above-listed libraries should be installed for the framework to run properly. 

### RELEASE NOTES
Latest Release: 2.0.0
 
### LICENSE
GNU GENERAL PUBLIC LICENSE Version 3, 29 June 2007 (see https://www.gnu.org/licenses/gpl-3.0.en.html)
 
### DEVELOPER RESOURCES
Source Repositories: [https://github.com/hepsycode/SLIDE-x](https://github.com/hepsycode/SLIDE-x-ML-ICCD)

- Clone: 
    - ssh: [git@github.com:hepsycode/SLIDE-x.git](git@github.com:hepsycode/SLIDE-x-ML-ICCD.git)
    - https: [https://github.com/hepsycode/SLIDE-x.git](https://github.com/hepsycode/SLIDE-x-ML-ICCD.git)
 
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
If you use SLIDE-x-ML in your research, please cite:
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
