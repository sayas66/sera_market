pragma Singleton

import QtQuick

Item {
    property var mainLoader
    property string mainTitle
    property string mainSubtitle

    readonly property string screenPath: 'qrc:/app/screens/'

    readonly property var routes: [
        {
            name: 'dashboard',
            title: 'Dashboard',
            subtitle: 'Lorem ipsum dolor is amet',
            component: screenPath + 'dashboard/DashboardScreen.qml'
        },
    ]

    function navigate(route, params = {}) {
        for(let i = 0; i < routes.length; i++) {
            if(route === routes[i].name) {
                mainLoader.source = routes[i].component
                mainTitle = routes[i].title
                mainSubtitle = routes[i].subtitle

                for(let key in params) {
                    mainLoader.item[key] = params[key]
                }

                return
            }
        }

        console.log('Route not found')
        mainLoader.sourceComponent = null
        mainTitle = null
        mainSubtitle = null
    }
}
