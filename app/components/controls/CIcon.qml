import QtQuick
import QtQuick.Controls
import Qt5Compat.GraphicalEffects

Image {
    id: root

    property color color: "#000000"

    fillMode: Image.PreserveAspectFit
    width: 45

    layer.enabled: true
    layer.effect: ColorOverlay {
        color: root.color
    }
}
