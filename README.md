# *Heart activity record processing and analysis*

[![License: MIT](https://img.shields.io/badge/license-CC%20BY--SA%204.0-blue.svg)](https://creativecommons.org/licenses/by-sa/4.0)

This is my bachelor's thesis that I wrote over two months during my final year of studying the biomedical engineering program at the CTU,  Faculty of Biomedical Engineering. Unfortunately, the whole work is written in the Czech language. I may translate it into English in the future.

### [Click here to read the thesis.](http://mareksokol.cz)
<sup>*[Click here for revised edition on CTU DSpace.](https://dspace.cvut.cz/)*</sup>

## Abstract
This bachelor's work describes designing and implementing a software
solution to evaluate cardiac activity in MATLAB and Python
software environments. The main goal is to design an adaptive algorithm in the
MATLAB environment, that will perform offline analysis of the
measured ECG signal with artefact. The nonlinear geometric method of the
Poincaré graph was chosen for the analysis of the processed record, which
evaluates the variability of the heart rate. Another goal of this work is to
design and implement a solution with a GUI for the online evaluation of cardiac
activity in the Python environment. For testing the proposed solution,
short-term records measured in a total of 5 probands were used. During the
measurement, the probands were first at rest, and then each of them was exposed
to a situation that stimulates cognitive stress. Each of the probands was
monitored during the measurement by Holter, a portable electrocardiogram. The
result of the work is a MATLAB application capable of adaptively processing the
measured ECG recordings and displaying graphs of parameters demonstrating the
correlation of cognitive load with heart rate variability over time. A
multiplatform Python GUI application was programmed, extending the output within
the online measurement and processing of ECG records. 

## Acknowledgements
I would like to thank the supervisor of my bachelor thesis, Mgr. Ksenia Sedová, Ph.D. for help, advice, and professional management of this work. I would also like to thank Ing. et Ing. Jan Hejda, Ph.D., for all-around help, a lot of valuable and inspiring advice, suggestions, recommendations, and the time he devoted to me in solving the issue. Last but not least, I thank my family and all the friends who supported me in creating this work.

## Work results
### MATLAB software
As part of the bachelor's thesis, a software MATLAB solution for offline processing and evaluation of cardiac activity was designed and implemented. The solution is based on a procedure that consists of preprocessing, component detection, component processing, and analysis. In order to detect components, a QRS detector using adaptive thresholding was introduced and modified. A complex algorithm has been implemented for component processing, which detects and corrects artifacts within the detected components. The evaluation of cardiac activity takes place in the time domain and is based on the nonlinear geometric method of the Poincaré graph. The subject of the analysis is heart rate variability (HRV). The implemented solution visualizes the individual parts together with the Poincaré graph and automatically calculates its quantitative parameters using the ellipse fitting method.

<img src="https://github.com/sokolmarek/bachelors-thesis/blob/main/assets/github/edu.gif?raw=true" width="800" />

### Python software (*BBPM*)
Furthermore, a multiplatform application in the Python environment for online assessment of cardiac activity was designed and programmed. A graphical user interface has been created for the application, which allows the user to easily interactively control the application. The software is based on real-time processing of the ECG signal, which is received from the measuring device via a wireless local area network. At the same time, components are detected in real-time. The application provides a live visualization of the specified calculated parameters and the processed ECG signal on its main panel. Functionality for collecting raw or processed data has also been added.

![bbpm.svg](https://github.com/sokolmarek/bachelors-thesis/blob/main/assets/github/bbpm_app.svg?raw=true)

## Compiling the document

### Prerequisites

### Contributors
* Marek Sokol - *Author*
* Ing. et Ing. Jan Hejda, Ph.D. - *Supervisor*
* Mgr. Ksenia Sedova, Ph.D. - *Supervisor*
