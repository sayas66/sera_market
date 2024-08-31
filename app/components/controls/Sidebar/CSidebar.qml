import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import com.omm.constants

import '../../controls'
import '../../effects'

Drawer {
    id: root

    implicitWidth: 250
    height: parent.height

    background: Rectangle {
        color: Colors.white

        layer.enabled: true
        layer.effect: CDropShadow {
            radius: 2
        }
    }

    contentItem: CSidebarList { }
}
