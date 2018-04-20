FROM rocker/binder:3.4.3

# Install system dependency for pdftools
USER root
RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    libpoppler-cpp-dev \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/

# Copy repo into ${HOME}, make user own $HOME
USER root
COPY . ${HOME}
RUN chown -R ${NB_USER} ${HOME}
USER ${NB_USER}

## run any install.R script we find
RUN if [ -f install.R ]; then R --quiet -f install.R; fi