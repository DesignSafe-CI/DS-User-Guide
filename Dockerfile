FROM taccwma/tacc-docs:998ea5e6

# To archive TACC code, then replace it
RUN cp -r /code /code-from-tacc
COPY ./user-guide /code
