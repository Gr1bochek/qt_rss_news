QT += core gui network xml testlib core5compat
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++14

TARGET = rss-test
CONFIG += console
CONFIG -= app_bundle

TEMPLATE = app

RSSGUI_PATH = ../rss-gui
INCLUDEPATH += $$RSSGUI_PATH
DEPENDPATH += $$RSSGUI_PATH

include(../rss-src.pri)

SOURCES += main.cpp \
    testrsshandler.cpp

HEADERS += \
    testrsshandler.h

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += mobility
