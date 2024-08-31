import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import com.omm.constants

import '../../effects'

Pane {
    id: header

    signal buttonMenuClicked()

    height: 100
    leftPadding: 25
    rightPadding: 25

    background: Rectangle {
        color: Colors.white
    }

    contentItem: RowLayout {
        spacing: 15

        CHeaderButton {
            icon.source: Icons.menu
            onClicked: header.buttonMenuClicked()
        }

        CHeaderTitle { }

        Item {
            Layout.fillWidth: true
        }

        CHeaderButton {
            icon.source: Icons.settings
        }
    }

    layer.enabled: true
    layer.effect: CDropShadow {
        radius: 2
    }
}
