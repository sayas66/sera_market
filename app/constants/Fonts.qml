pragma Singleton

import QtQuick

Item {

    // style de font pour les titres
    readonly property var title: {
        'bold': true,
        'weight': Font.Black,
        'size': 28,
        'color': '#000000'
    }

    // style de font pour les sous-titres
    readonly property var subtitle: {
        'weight': Font.Bold,
        'size': 14,
        'color': '#666666'
    }

}
