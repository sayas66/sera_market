import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import com.omm.constants
import com.omm.core

import '../../controls'
import '../../effects'

ScrollView {
    id: root

    property int currentIndex: 0

    property var menus: [
        {
            text: 'Home',
            icon: Icons.home,
            onClicked: () => {
                Routes.navigate('dashboard')
            }
        },
        {
            text: 'Articles',
            icon: Icons.product,
            onClicked: () => {
                Routes.navigate('')
            }
        },
        {
            text: 'Ventes',
            icon: Icons.moneyIn,
            onClicked: () => {
                Routes.mainLoader.sourceComponent = null
            }
        },
        {
            text: 'Decaissement',
            icon: Icons.moneyOut,
            onClicked: () => {
                Routes.mainLoader.sourceComponent = null
            }
        },
        {
            text: 'Etat de caisse',
            icon: Icons.moneyBag,
            onClicked: () => {
                Routes.mainLoader.sourceComponent = null
            }
        },
        {
            text: 'Approvisionement',
            icon: Icons.product,
            onClicked: () => {
                Routes.mainLoader.sourceComponent = null
            }
        },
        {
            text: 'Inventaire',
            icon: Icons.product,
            onClicked: () => {
                Routes.mainLoader.sourceComponent = null
            }
        },
        {
            text: 'Parametre',
            icon: Icons.settings,
            onClicked: () => {}
        },
    ]

    Pane {
        width: root.width
        height: root.height
        padding: 20
        background: null

        Column {
            width: parent.width
            spacing: 10

            CSidebarTitle {
                width: parent.width
            }

            Repeater {
                model: menus

                CSidebarButton {
                    width: parent.width
                    text: modelData.text
                    icon.source: modelData.icon
                    currentActive: root.currentIndex === index

                    onClicked: {
                        root.currentIndex = index
                        modelData.onClicked()
                    }
                }
            }
        }
    }
}
