import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import '../../components/controls'

CPage {
    id: root

    property string text

    contentItem: Pane {
        background: null

        Label {
            text: 'dashboard page ' + root.text
        }
    }
}
