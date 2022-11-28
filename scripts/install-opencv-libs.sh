#!/bin/bash

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
set -e
OLDDIR=$(pwd)

apt depends python3-opencv

LIBS="libopencv-calib3d4.2
libopencv-dnn4.2
libopencv-features2d4.2
libopencv-flann4.2
libopencv-highgui4.2
libopencv-imgcodecs4.2
libopencv-imgproc4.2
libopencv-ml4.2
libopencv-objdetect4.2
libopencv-photo4.2
libopencv-shape4.2
libopencv-stitching4.2
libopencv-superres4.2
libopencv-video4.2
libopencv-videoio4.2
libopencv-videostab4.2
libopencv-viz4.2"

for lib in $LIBS
do
    sudo apt install $lib
done

pip install opencv-python