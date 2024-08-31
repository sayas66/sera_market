import QtQuick
import QtQuick.Controls

import com.omm.constants
import com.omm.core

Column {
    id: root

    spacing: 5

    Label {
        text: Routes.mainTitle ? Routes.mainTitle : 'Sera managment'
        font.pixelSize: 16
        font.weight: Font.Black
        font.bold: true
        // color: Colors.primary
    }

    Label {
        text: Routes.mainSubtitle ? Routes?.mainSubtitle : application.name
        font.pixelSize: 10
        color: '#666666'
    }
}
