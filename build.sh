#!/bin/bash

## add this -> `export JAVA_HOME=$(/usr/libexec/java_home)` to shell rc
## install deps using `install-deps-mac` or `install-deps-ubuntu`
## deps `ant` is required for java build

opencv-build-flags() {
  local BUILD_DIR=$1
  local CONTRIB_DIR=$2

  cmake -S . -B "$BUILD_DIR" \
    -DBUILD_SHARED_LIBS=OFF \
    -DCMAKE_CXX_STANDARD=11 \
    -DCMAKE_OSX_DEPLOYMENT_TARGET= \
    -DBUILD_JASPER=OFF \
    -DBUILD_JPEG=OFF \
    -DBUILD_OPENEXR=OFF \
    -DBUILD_OPENJPEG=OFF \
    -DBUILD_PERF_TESTS=OFF \
    -DBUILD_PNG=OFF \
    -DBUILD_PROTOBUF=OFF \
    -DBUILD_TBB=OFF \
    -DBUILD_TESTS=OFF \
    -DBUILD_TIFF=OFF \
    -DBUILD_WEBP=OFF \
    -DBUILD_ZLIB=OFF \
    -DBUILD_opencv_hdf=OFF \
    -DBUILD_opencv_java=ON \
    -DBUILD_opencv_text=ON \
    -DOPENCV_ENABLE_NONFREE=ON \
    -DOPENCV_EXTRA_MODULES_PATH="$CONTRIB_DIR" \
    -DOPENCV_GENERATE_PKGCONFIG=ON \
    -DPROTOBUF_UPDATE_FILES=ON \
    -DWITH_1394=OFF \
    -DWITH_CUDA=OFF \
    -DWITH_EIGEN=ON \
    -DWITH_FFMPEG=ON \
    -DWITH_GPHOTO2=OFF \
    -DWITH_GSTREAMER=OFF \
    -DWITH_JASPER=OFF \
    -DWITH_OPENEXR=ON \
    -DWITH_OPENGL=OFF \
    -DWITH_QT=OFF \
    -DWITH_TBB=ON \
    -DWITH_VTK=ON \
    -DBUILD_opencv_python2=OFF \
    -DBUILD_opencv_python3=OFF \
    -DPYTHON3_EXECUTABLE="$(which python3)"
}

build-opencv() {
  local BUILD_DIR="./build"
  local CONTRIB_DIR="./contrib/modules"

  rm -rfv $BUILD_DIR
  mkdir -p $BUILD_DIR

  # install-opencv-dependencies
  opencv-build-flags $BUILD_DIR $CONTRIB_DIR &&
    cmake --build $BUILD_DIR &&
    cd $BUILD_DIR &&
    make -j8
}

build-opencv
