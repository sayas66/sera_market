#ifndef APPLICATION_H
#define APPLICATION_H

/////////////////////////////////////////////////////////////////////
///
/// \brief The Application class
///
/// classe contentant les informations general de l'application
/// et est utisiees pour exposer ces inforamations au QML
///
/// Ce fichier doit etre mis a jour a chaque build de nouvelle
/// version.
///
////////////////////////////////////////////////////////////////////////

#include <QObject>

class Application : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString author READ author CONSTANT)
    Q_PROPERTY(QString name READ name CONSTANT)
    Q_PROPERTY(QString version READ version CONSTANT)
    Q_PROPERTY(int build READ build CONSTANT)

public:
    explicit Application(QObject *parent = nullptr) : QObject{parent} {};

    /**
     * @brief author
     * @return le nom du developpeur
     */
    static QString author() { return "sayas"; }

    /**
     * @brief name
     * @return Le nom de l'application
     */
    static QString name() { return "online market managment"; }

    /**
     * @brief version
     * @return la version de l'application ex. 1.0.0
     */
    static QString version()  { return "1.0.0"; }

    /**
     * @brief build
     * @return le numero de build de l'application
     * une valeur incrementee a chaque sortie de nouvelle version
     */
    static int build()  { return 1; }

signals:
};

#endif // APPLICATION_H
