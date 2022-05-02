# NAME: dclong/jupyterhub-golang
FROM dclong/jupyterhub
# GIT: https://github.com/dclong/docker-jupyterhub.git

RUN xinstall golang -ic \
    && env GO111MODULE=on go install github.com/gopherdata/gophernotes@latest \
    && mkdir -p /usr/local/share/jupyter/kernels/gophernotes \
    && cd /usr/local/share/jupyter/kernels/gophernotes \
    && cp "$(go env GOPATH)"/pkg/mod/github.com/gopherdata/gophernotes@v*/kernel/*  ./ \
    && chmod +w ./kernel.json \
    && sed "s|gophernotes|$(go env GOPATH)/bin/gophernotes|" < kernel.json.in > kernel.json \
    && chmod -R 777 /root

