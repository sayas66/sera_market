QT += quick

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# APPLICATION_NAME = \\\"online market managment\\\"
# APPLICATION_VERSION = "1.0.0"
# APPLICATION_BUILD = 1

# DEFINES += APPLICATION_NAME=\\\"$$APPLICATION_NAME\\\"
# DEFINES += APPLICATION_VERSION=\\\"$$APPLICATION_VERSION\\\"
# DEFINES += APPLICATION_BUILD=\\\"$$APPLICATION_BUILD\\\"

SOURCES += \
        src/main.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    src/config/application.h \
    src/utils/initialization.h
