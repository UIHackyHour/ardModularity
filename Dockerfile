FROM rocker/rstudio:3.6.1

ARG DEBIAN_FRONTEND=noninteractive

# for rgl install
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    xorg \
    libx11-dev \
    libglu1-mesa-dev 

RUN install2.r \
        igraph \
        rgl \
        ggplot2

COPY . /home/rstudio/