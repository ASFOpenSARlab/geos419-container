FROM ghcr.io/asfopensarlab/deployment-opensarlab-container_sar:sha256-617ac13

COPY geos419.yml /tmp/geos419.yml

RUN mamba env create -f /tmp/geos419.yml &&\
    /opt/conda/envs/geos419/bin/python -m ipykernel install --prefix /opt/conda/envs/geos419 --name geos419 --display-name "geos419" &&\
    rm -rf /opt/conda/pkgs/cache

