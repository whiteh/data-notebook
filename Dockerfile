FROM jupyter/datascience-notebook

# Install Python 2.7 conda environment
RUN conda create -n py27 python=2.7 ipykernel
RUN /bin/bash -c "source activate py27 && python -m ipykernel install --user"

# Install packages for python 2 environment
RUN conda install scipy scikit-learn numpy matplotlib -n py27