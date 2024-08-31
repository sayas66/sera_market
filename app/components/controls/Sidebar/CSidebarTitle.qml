import QtQuick
import QtQuick.Controls

import com.omm.constants

Pane {
    id: root

    property int fontSize: 18

    background: Rectangle {
        color: 'transparent'
    }

    implicitHeight: 80

    Row {
        // anchors.fill: parent
        anchors.verticalCenter: parent.verticalCenter
        spacing: 5

        Label {
            text: 'Sera'
            font.pixelSize: root.fontSize
        }

        Label {
            text: 'Managment'
            font.pixelSize: root.fontSize
            font.bold: true
            font.weight: Font.Black
            color: Colors.primary
        }
    }
}
