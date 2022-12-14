[![Coverage Status](https://coveralls.io/repos/github/IKNL/ppDLI/badge.svg?branch=master)](https://coveralls.io/github/IKNL/ppDLI?branch=master)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/bcde6ed5c77440c6969462bfead0774c)](https://app.codacy.com/app/frankcorneliusmartin/ppDLI?utm_source=github.com&utm_medium=referral&utm_content=IKNL/ppDLI&utm_campaign=Badge_Grade_Dashboard)
[![PyPI version](https://badge.fury.io/py/ppDLI.svg)](https://badge.fury.io/py/ppDLI)
[![Build Status](https://travis-ci.com/IKNL/ppDLI.svg?branch=master)](https://travis-ci.com/IKNL/ppDLI)
# Introduction
The growing complexity of cancer diagnosis and treatment requires data sets that are larger than currently available in a single hospital or even in cancer registries. However, sharing patient data is difficult due to patient privacy and data protection needs. Privacy preserving distributed learning technology has the potential to overcome these limitations. In this setting organizations can collaborate by exchanging aggregated data and/or statistics while keeping the underlying data safely on site and undisclosed. This repository contains software (and instructions) to setup a distributed learning infrastructure.

For an overview of the architecture and information on how to use the infrastructure, please see [https://distributedlearning.ai](https://distributedlearning.ai). For documentation please see [https://distributedlearning.readme.io](https://distributedlearning.readme.io).

## Hardware and software requirements
### Server Installation
Running the central server requires a (virtual) machine that:
* is accessible from the internet
* has Python 3.6+ and the ppdli package installed from source (`pip install -e.) or [install_ubuntu.sh](https://gitlab.com/UM-CDS/pht/vantage6-0.2.4/-/blob/master/Installation/server/install_ubuntu.sh)

### Node Installation
Running a node/site requires a (virtual) machine that has:
* Python 3.6+ and the ppdli package installed from source(`pip install -e.`)
* Docker CE installed (the user running the node software needs to have the proper permissions to perform docker commands)
* Access to a local data store
* Access to the internet and/or central server

#Testing
1. Test if server fixtures and api are correctly working. Refer to the jupyter notebook [adminQuery](https://gitlab.com/UM-CDS/pht/vantage6-0.2.4/-/blob/master/Installation/test/adminQuery.ipynb)
2. Test to post a distributed task. Refer to the jupyter notebook [addtask](https://gitlab.com/UM-CDS/pht/vantage6-0.2.4/-/blob/master/Installation/test/addTask.ipynb)
 
