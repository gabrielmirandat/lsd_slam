#To make a project qtable, just add a .pro file with the following tags
#run with  qmake -o Makefile border.pro to generate the makefile
#run make

INCLUDEPATH= /opt/ros/indigo/include

#TARGET  = main

#QMAKE_CXX = ccache g++

CONFIG -= app_bundle

HEADERS += src/*.h \
        src/DataStructures/*.h \
        src/DepthEstimation/*.h \
        src/GlobalMapping/*.h \
        src/IOWrapper/*.h \
        src/IOWrapper/ROS/*.h \
        src/IOWrapper/OpenCV/*.h \
        src/Tracking/*.h \
        src/util/*.h \

SOURCES += src/*.cpp \
        src/DataStructures/*.cpp \
        src/DepthEstimation/*.cpp \
        src/GlobalMapping/*.cpp \
        src/IOWrapper/*.cpp \
        src/IOWrapper/ROS/*.cpp \
        src/IOWrapper/OpenCV/*.cpp \
        src/Tracking/*.cpp \
        src/util/*.cpp \

LIBS    += -lopencv_core -lopencv_highgui -lopencv_imgproc -lopencv_video -lopencv_features2d -lopencv_nonfree -lboost_timer -lboost_system -lg2o -ldbow2

#QMAKE_LFLAGS += -c
