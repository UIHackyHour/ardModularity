FROM rocker/rstudio:3.6.1

ARG DEBIAN_FRONTEND=noninteractive

# for rgl install
# https://stackoverflow.com/questions/31820865/installing-rgl-on-ubuntu-and-mac-x11-not-found
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    xorg \
    libx11-dev \
    libglu1-mesa-dev \
    libfreetype6-dev

RUN install2.r \
        igraph \
        rgl \
        ggplot2

COPY . /home/rstudio/