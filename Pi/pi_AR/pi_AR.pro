#-------------------------------------------------
#
# Project created by QtCreator 2017-08-25T09:24:42
#
#-------------------------------------------------

QT       += core gui
QT		 += opengl

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = pi_AR
TEMPLATE = app


CFLAGS+=`pkg-config --cflags opencv`
LDFLAGS+=`pkg-config --libs opencv`

SOURCES += main.cpp\
        mainwindow.cpp\
#        grabthread.cpp
    mygl.cpp \
    marker.cpp \
    decode.cpp

HEADERS  += mainwindow.h\
#        grabthread.h \
#	shareData.h
    mygl.h \
    marker.h \
    decode.h

INCLUDEPATH += /usr/local/include

LIBS += -L/usr/local/lib \
    /usr/local/lib/libopencv_core.so \
	/usr/local/lib/libopencv_features2d.so \
	/usr/local/lib/libopencv_flann.so \
	/usr/local/lib/libopencv_highgui.so \
	/usr/local/lib/libopencv_imgcodecs.so \
	/usr/local/lib/libopencv_imgproc.so \
	/usr/local/lib/libopencv_ml.so \
	/usr/local/lib/libopencv_objdetect.so \
	/usr/local/lib/libopencv_photo.so \
	/usr/local/lib/libopencv_shape.so \
	/usr/local/lib/libopencv_stitching.so \
	/usr/local/lib/libopencv_superres.so \
	/usr/local/lib/libopencv_videoio.so \
	/usr/local/lib/libopencv_video.so \
    /usr/local/lib/libopencv_videostab.so \
    /usr/local/lib/libopencv_calib3d.so


FORMS    += mainwindow.ui