QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++14

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0
INCLUDEPATH+= \
    ./Eigen

SOURCES += \
    Circle.cpp \
    Curve.cpp \
    Line.cpp \
    Oval.cpp \
    Polygen.cpp \
    BSpline.cpp \
    Rect.cpp \
    BSplineFit.cpp \
    main.cpp \
    mainwindow.cpp \
    method.cpp

HEADERS += \
    Circle.h \
    Curve.h \
    Line.h \
    Mode.h \
    Oval.h \
    Polygen.h \
    BSpline.h \
    Rect.h \
    BSplineFit.h \
    mainwindow.h \
    method.h

FORMS += \
    mainwindow.ui

TRANSLATIONS += \
    point_zh_CN.ts
CONFIG += lrelease
CONFIG += embed_translations

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    ico.qrc

DISTFILES += \
    point.pro.user
