import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import com.omm.constants

import '../../../components/controls'
import '../../../components/effects'

Pane {
    id: root

    property string title
    property string note
    property string icon
    property real value
    property string prefix
    property color color: Colors.white

    implicitWidth: 230
    implicitHeight: 120
    padding: 20

    background: Rectangle {
        color: root.color
        radius: 6
    }

    ColumnLayout {
        anchors.fill: parent
        spacing: 0

        RowLayout {
            Layout.fillWidth: true
            spacing: 15

            CIcon {
               source: Icons.moneyBag
               Layout.preferredWidth: 22
               color: Colors.primary
            }

            Label {
                Layout.fillWidth: true
                text: title
                font.pixelSize: 10
                font.bold: true
                font.capitalization: Font.AllUppercase
                wrapMode: Label.WordWrap
                color: Colors.primary
            }
        }

        Label {
            Layout.fillWidth: true
            Layout.fillHeight: true
            text: value + " " + prefix
            font.pixelSize: 16
            // horizontalAlignment: Qt.AlignRight
            // color: Colors.white
        }

    }

    layer.enabled: true
    layer.effect: CDropShadow {
        color: '#efefef'
    }
}
