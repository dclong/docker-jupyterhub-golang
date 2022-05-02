# NAME: dclong/jupyterhub-golang
FROM dclong/jupyterhub
# GIT: https://github.com/dclong/docker-jupyterhub.git

# Kotlin kernel
RUN pip3 install kotlin-jupyter-kernel \
    && /scripts/sys/purge_cache.sh
