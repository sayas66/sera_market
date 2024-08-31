import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import com.omm.constants

import '../../controls'

Button {
    id: button

    property bool currentActive: false

    height: 60
    padding: 15

    background: Rectangle {
        color: button.currentActive ? Colors.primary : 'transparent'
        radius: 8

        Behavior on opacity {
            OpacityAnimator { duration: 300 }
        }
    }

    contentItem: RowLayout {
        spacing: 15

        CIcon {
            Layout.preferredWidth: 18
            Layout.preferredHeight: 18
            source: button.icon.source
            color: button.currentActive ? Colors.white : '#222222'
        }

        Label {
            Layout.fillWidth: true
            text: button.text
            color: button.currentActive ? Colors.white : '#222222'
        }
    }

    onClicked: {
        sidebar.close()
    }
}
