FROM tup_docs-2024-05-03t16-46

RUN mv /code /code-from-tacc
COPY ./user-guide/ /code/
RUN cp -r /code-from-tacc/docs/js/core /code/docs/js/core && \
    cp -r /code-from-tacc/docs/js/autoScrollNav.js /code/docs/js/autoScrollNav.js && \
    cp -r /code-from-tacc/docs/css/core /code/docs/css/core
RUN rm -r /code/themes/tacc-readthedocs && \
    cp -r /code-from-tacc/themes/tacc-readthedocs /code/themes/tacc-readthedocs
