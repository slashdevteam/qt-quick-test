QT += qml quick

SOURCES += \
    main.cpp

RESOURCES += \
    resources.qrc
target.path = .
INSTALLS += target

unix:!macx: LIBS += -lpthread -lrt

CONFIG(release, debug|release) {
    message(Release)
    message($$USER_FLAGS)
    QMAKE_CFLAGS_RELEASE += $$USER_FLAGS
    QMAKE_CXXFLAGS_RELEASE += $$USER_FLAGS
}

CONFIG(debug, debug|release) {
    message(Debug)
    message($$CONFIG)
    message($$USER_FLAGS)
    QMAKE_CXXFLAGS_DEBUG += -Og -g -ggdb3
    QMAKE_CFLAGS_DEBUG += $$USER_FLAGS
    QMAKE_CXXFLAGS_DEBUG += $$USER_FLAGS
}
