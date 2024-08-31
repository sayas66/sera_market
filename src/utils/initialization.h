#ifndef INITIALIZATION_H
#define INITIALIZATION_H

#include <QObject>
#include <QDebug>
#include <QApplication>
#include <QQmlApplicationEngine>
#include <QStringList>
#include <QFontDatabase>
#include <QFont>

namespace Initialization
{

/**
 * @brief initializeFont
 * Initialisation des polices utilises par l'application
 * font family : Manrope
 */
[[maybe_unused]]
static void initializeFont(QApplication &app)
{
    QStringList fonts {
        ":/assets/fonts/Roboto-Black.ttf",
        ":/assets/fonts/Roboto-BlackItalic.ttf",
        ":/assets/fonts/Roboto-Bold.ttf",
        ":/assets/fonts/Roboto-BoldItalic.ttf",
        ":/assets/fonts/Roboto-Italic.ttf",
        ":/assets/fonts/Roboto-Light.ttf",
        ":/assets/fonts/Roboto-LightItalic.ttf",
        ":/assets/fonts/Roboto-Medium.ttf",
        ":/assets/fonts/Roboto-MediumItalic.ttf",
        ":/assets/fonts/Roboto-Regular.ttf",
        ":/assets/fonts/Roboto-Thin.ttf",
        ":/assets/fonts/Roboto-ThinItalic.ttf"
    };

    for(const QString &font : fonts)
    {
        int fontID = QFontDatabase::addApplicationFont(font);

        if(fontID == -1)
        {
            qDebug() << "could't load font " << font;
        }
    }

    QFont font("Roboto");
#ifdef Q_OS_WINDOWS
    font.setPointSize(8);
#endif
    app.setFont(font);
}


/**
 * @brief initializeQmlSingletonType
 * Initialisation des types singleton QML
 * fonts, colors, etc.
 */
[[maybe_unused]]
static void initializeQmlSingletonType()
{
    qmlRegisterSingletonType(QUrl("qrc:/app/constants/Fonts.qml"), "com.omm.constants", 1, 0, "Fonts");
    qmlRegisterSingletonType(QUrl("qrc:/app/constants/Colors.qml"), "com.omm.constants", 1, 0, "Colors");
    qmlRegisterSingletonType(QUrl("qrc:/app/constants/Icons.qml"), "com.omm.constants", 1, 0, "Icons");
    qmlRegisterSingletonType(QUrl("qrc:/app/core/Routes.qml"), "com.omm.core", 1, 0, "Routes");
}

};

#endif // INITIALIZATION_H
