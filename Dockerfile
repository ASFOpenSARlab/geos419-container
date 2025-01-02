FROM ghcr.io/asfopensarlab/deployment-opensarlab-container_sar:sha256-7e2596f77e47b71acc7b2af66a8001315ab8c67149725afc61acc736a0131015

COPY geos419.yml /tmp/geos419.yml

RUN mamba env create -f /tmp/geos419.yml &&\
    /opt/conda/envs/geos419/bin/python -m ipykernel install --prefix /opt/conda/envs/geos419 --name geos419 --display-name "geos419" &&\
    rm -rf /opt/conda/pkgs/cache

