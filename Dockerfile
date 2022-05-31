# NAME: dclong/jupyterhub-golang
FROM dclong/jupyterhub
# GIT: https://github.com/legendu-net/docker-jupyterhub.git

# GoLANG Kernel
COPY --from=dclong/gophernotes:next /usr/local/go/ /usr/local/
COPY --from=dclong/gophernotes:next /root/go/bin/gophernotes /usr/local/go/bin/
COPY --from=dclong/gophernotes:next /usr/local/share/jupyter/kernels/gophernotes/kernel.json.in /usr/local/share/jupyter/kernels/gophernotes/kernel.json
