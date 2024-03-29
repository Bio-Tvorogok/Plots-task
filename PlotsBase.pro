#-------------------------------------------------
#
# Project created by QtCreator 2019-04-11T23:10:42
#
#-------------------------------------------------

QT       += core gui \
    printsupport

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = PlotsBase
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++11

SOURCES += \
        main.cpp \
        mainwindow.cpp \
    qplot/qcustomplot.cpp \
    adapter.cpp \
    model.cpp \
    pow.cpp

HEADERS += \
        mainwindow.h \
    qplot/qcustomplot.h \
    adapter.h \
    model.h \
    modelexception.h \
    colorgetter.h \
    pow.h

FORMS += \
        mainwindow.ui


# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

win32:CONFIG(release, debug|release): LIBS += -LC:/Users/i_kir/Desktop/WinNTL-11_3_2/src/x64/release/ -lNTL
else:win32:CONFIG(debug, debug|release): LIBS += -LC:/Users/i_kir/Desktop/WinNTL-11_3_2/src/x64/debug/ -lNTL
else:unix: LIBS += -LC:/Users/i_kir/Desktop/WinNTL-11_3_2/src/x64/ -lNTL

INCLUDEPATH += C:/Users/i_kir/Desktop/WinNTL-11_3_2/include
DEPENDPATH += C:/Users/i_kir/Desktop/WinNTL-11_3_2/include
