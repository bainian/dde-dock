
include(../../interfaces/interfaces.pri)

QT              += widgets gui core dbus x11extras svg
TEMPLATE         = lib
CONFIG          += plugin c++11 link_pkgconfig
PKGCONFIG       += xcb xcb-image xcb-icccm xcb-composite xtst

TARGET          = $$qtLibraryTarget(system-tray)
DESTDIR          = $$_PRO_FILE_PWD_/../
DISTFILES       += system-tray.json

isEqual(DOCK_TRAY_USE_NATIVE_POPUP, YES) {
    DEFINES += DOCK_TRAY_USE_NATIVE_POPUP
}

HEADERS += \
    systemtrayplugin.h \
    dbus/dbustraymanager.h \
    traywidget.h \
    fashiontrayitem.h \
    tipswidget.h

SOURCES += \
    systemtrayplugin.cpp \
    dbus/dbustraymanager.cpp \
    traywidget.cpp \
    fashiontrayitem.cpp \
    tipswidget.cpp

target.path = $${PREFIX}/lib/dde-dock/plugins/
INSTALLS += target

RESOURCES += \
    resources.qrc
