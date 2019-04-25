#include <QtWidgets/QApplication>
#include <QtQuick/QQuickView>

int main(int argc, char *argv[])
{
    printf("Compiled with Qt Version %s\n", QT_VERSION_STR);

    QGuiApplication app(argc, argv);

    QQuickView *view = new QQuickView;
    view->setSource(QUrl("qrc:/main.qml"));
    view->show();
    return app.exec();
}
