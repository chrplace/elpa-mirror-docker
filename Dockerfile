FROM alpine/git
WORKDIR /src
RUN git clone --depth=1 https://github.com/d12frosted/elpa-mirror.git /src/elpa-mirror

FROM flashspys/nginx-static
COPY --from=0 /src/elpa-mirror /static
