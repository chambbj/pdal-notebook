FROM pdal/pdal:master-alpine

RUN apk add --no-cache \
        py-pip \
        alpine-sdk \
        python-dev \
        cython-dev \
        py-packaging \
        py-numpy-dev \
        libxml2-dev \
        freetype-dev \
        libpng-dev \
        py-scipy \
    ; \
    pip install \
        jupyter \
        matplotlib \
        pandas \
        seaborn \
        shapely

WORKDIR /notebooks

CMD ["jupyter", "notebook", "--allow-root", "--ip=0.0.0.0"]
