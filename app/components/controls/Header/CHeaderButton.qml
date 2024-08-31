import QtQuick
import QtQuick.Controls

import com.omm.constants

ToolButton {
    id: button

    property real size: 45

    implicitWidth: button.size
    implicitHeight: button.size

    icon.color: button.pressed ? Colors.white : (button.hovered ? Colors.primary : '#444444')

    Behavior on icon.color {
        ColorAnimation { duration: 300 }
    }

    background: Rectangle {
        color: button.pressed || button.hovered ? Colors.primary : 'transparent'
        radius: button.size / 2
        opacity: button.pressed ? 1 : 0.3

        Behavior on color {
            ColorAnimation { duration: 300 }
        }

        Behavior on opacity {
            NumberAnimation { duration: 300 }
        }
    }
}
