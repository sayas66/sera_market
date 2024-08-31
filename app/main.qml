import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts

import com.omm.constants
import com.omm.core

import 'components/controls'
import 'components/controls/Header'
import 'components/controls/Sidebar'

import 'screens/dashboard'

ApplicationWindow {
    id: window

    width: 350
    height: 620
    visible: true
    title: application && application.name

    background: Rectangle {
        color: Colors.page
    }

    header: CHeader {
        onButtonMenuClicked: sidebar.open()
    }

    CSidebar {
        id: sidebar
    }

    Loader {
        id: mainLoader
        anchors.fill: parent
    }

    Component.onCompleted: {
        Routes.mainLoader = mainLoader
        Routes.navigate('dashboard')
    }
}
