import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import com.omm.constants

import '../../../components/controls'

Pane {
    id: root

    background: null
    padding: 0

    contentItem: ScrollView {
        id: scrollView

        ScrollBar.vertical: ScrollBar {
            policy: ScrollBar.AlwaysOff
        }

        ScrollBar.horizontal: ScrollBar {
            policy: ScrollBar.AlwaysOff
        }

        Pane {
            height: scrollView.height
            padding: 0
            background: null

            Row {
                height: scrollView.height
                spacing: 15

                CardIndication {
                    title: "Chiffre d'affaire du jour"
                    value: 0
                    prefix: "AR"
                }

                CardIndication {
                    title: "Chiffre d'affaire du jour"
                    value: 0
                }

                CardIndication {
                    title: "Chiffre d'affaire du jour"
                    value: 0
                }

            }
        }
    }
}
