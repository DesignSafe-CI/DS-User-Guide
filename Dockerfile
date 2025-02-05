FROM taccwma/tacc-docs:v0.15.1

# To archive TACC content, before replacing it
RUN mv /docs /docs-from-tacc
COPY ./user-guide/ /docs/

# To restore required TACC files
RUN cp -r  /docs-from-tacc/mkdocs.base.yml /docs/mkdocs.base.yml && \
    rm -rf /docs/docs/js/core && \
    cp -r  /docs-from-tacc/docs/js/core /docs/docs/js/core && \
    rm -rf /docs/docs/css/core && \
    cp -r  /docs-from-tacc/docs/css/core /docs/docs/css/core
RUN mkdir -p /docs/themes/ && \
    rm -rf   /docs/themes/tacc-readthedocs && \
    cp -r    /docs-from-tacc/themes/tacc-readthedocs /docs/themes/tacc-readthedocs
