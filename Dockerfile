ARG BASE_CONTAINER=jupyter/datascience-notebook
FROM $BASE_CONTAINER

LABEL maintainer="Yuske Yachi <yusuke.yachi@gmail.com>"

# Install Stan
RUN conda install --quiet --yes \
    'r-rstan' \
    'conda-forge::pystan' && \
    conda clean --all -f -y && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER
