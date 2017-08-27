# To install Introduction To Machine Learning For Security Pros
# https://github.com/CylanceSPEAR/IntroductionToMachineLearningForSecurityPros

# Using Ubuntu 16.04
FROM ubuntu:16.04
MAINTAINER https://twitter.com/sighmon

# Install dependencies
RUN apt-get update && apt-get install -y python-dev python-pip git libhdf5-dev python-tk libfuzzy-dev libffi-dev graphviz
RUN pip install numpy scipy sklearn keras theano tensorflow h5py matplotlib gevent requests ssdeep

# Set the working directory to /CylanceSPEAR
WORKDIR /CylanceSPEAR

# Clone the Cylance repo
RUN git clone https://github.com/CylanceSPEAR/IntroductionToMachineLearningForSecurityPros

# Start
RUN cd IntroductionToMachineLearningForSecurityPros && find . -type f -name \*.lzma -exec lzma -d {} \;
