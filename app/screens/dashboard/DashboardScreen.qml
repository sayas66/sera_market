import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtCharts

import com.omm.constants

import '../../components/controls'
import 'components'

CPage {
    id: root

    contentItem: ScrollView {
        id: scrollView

        Pane {
            width: scrollView.width
            background: null
            padding: 0

            Column {
                width: parent.width
                spacing: 30

                CardIndicationList {
                    width: parent.width
                }

                MoneyGraph {
                    width: parent.width
                    anchors.margins: 0
                }
            }
        }
    }
}
