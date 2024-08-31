#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "src/config/application.h"
#include "src/utils/initialization.h"

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;

    // utilisation d'un font personalise pour l'application
    // font family : Manrope
    Initialization::initializeFont(app);

    // initialisation des types qml singleton
    // Coleur, Fonts, etc.
    Initialization::initializeQmlSingletonType();

    // initialisation des contextes utilise par l'application
    // variables globaux exposees au qml
    Application application;
    engine.rootContext()->setContextProperty("application", &application);

    const QUrl url(QStringLiteral("qrc:/app/main.qml"));

    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated, &app,
        [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl) QCoreApplication::exit(-1);
        },
        Qt::QueuedConnection
    );

    engine.load(url);

    return app.exec();
}
