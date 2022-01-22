import QtQuick

import QtQuick.Controls

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 640
    height: 480

    // Make windows draggable, currently whole windows area is draggable, but can be adjusted to make draggable only top area
   property int previousX
   property int previousY

    MouseArea {
        anchors {
            top: parent.top
            bottom: parent.bottom
            left: parent.left
            right: parent.right
        }

        onPressed: {
            previousX = mouseX
            previousY = mouseY
        }

        onMouseXChanged: {
            var dx = mouseX - previousX
            mainWindow.setX(mainWindow.x + dx)
        }

        onMouseYChanged: {
            var dy = mouseY - previousY
            mainWindow.setY(mainWindow.y + dy)
        }
    }
}
