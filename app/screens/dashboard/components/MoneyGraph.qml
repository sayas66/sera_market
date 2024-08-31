import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtCharts

import com.omm.constants

import '../../../components/controls'
import '../../../components/effects'

Pane {
    id: root

    height: 250
    padding: -10

    background: Rectangle {
        color: Colors.primary
        radius: 8
    }

    ChartView {
        anchors.fill: parent
        title: "Evolution de vente"
        legend.alignment: Qt.AlignBottom
        antialiasing: true

        BarSeries {
            axisX: BarCategoryAxis {
                categories: ["Janv", "Fev", "Mars", "Avr", "Mai", "Juin", "Juil", "Août", "Sept", "Oct", "Nov", "Déc"]
            }

            BarSet {
                label: "Vente"
                values: [2, 2, 3, 4, 5]
                color: Colors.accent
            }
        }
    }

    layer.enabled: true
    layer.effect: CDropShadow {
        color: '#efefef'
    }
}
