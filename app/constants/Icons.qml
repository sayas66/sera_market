pragma Singleton

import QtQuick

Item {
    readonly property string iconPath: 'qrc:/assets/icons/'

    readonly property string menu: iconPath + 'Menu.png'
    readonly property string home: iconPath + 'Home.png'
    readonly property string settings: iconPath + 'Settings.png'
    readonly property string category: iconPath + 'Opened Folder.png'
    readonly property string product: iconPath + 'Product.png'
    readonly property string moneyOut: iconPath + 'Initiate Money Transfer.png'
    readonly property string moneyIn: iconPath + 'Request Money.png'
    readonly property string moneyBag: iconPath + 'Money Bag.png'
}
