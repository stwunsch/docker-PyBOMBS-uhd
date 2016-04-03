# UHD via PyBOMBS

# Derive from Ubuntu with PyBOMBS
FROM stwunsch/docker-pybombs

# Setup packages which should be installed by PyBOMBS
ENV packages "uhd"

# Update apt-get
RUN apt-get update

# Install previously selected packages
RUN pybombs -p ${PyBOMBS_prefix} -v install ${packages}

# Clean-up of unused source files
RUN rm -rf ${PyBOMBS_init}/src/uhd
