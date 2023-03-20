#!/bin/bash

install-opencv-dependencies() {
  brew install \
    ant \
    cmake \
    pkg-config \
    ceres-solver \
    eigen \
    ffmpeg \
    glog \
    harfbuzz \
    jpeg-turbo \
    libpng \
    libtiff \
    numpy \
    openblas \
    openexr \
    openjpeg \
    protobuf \
    tbb \
    vtk \
    webp \
    openjdk
    # python
}

install-opencv-dependencies
