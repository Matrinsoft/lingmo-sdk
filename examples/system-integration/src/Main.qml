import QtQuick 2.15
import QtQuick.Controls 2.15
import Lingmo.Quick 3.1
import Lingmo.Appearance 1.0

LingmoWindow {
    id: root
    visible: true
    width: 480
    height: 360
    title: "System Integration Example"

    Column {
        anchors.centerIn: parent
        spacing: 16

        Text {
            text: "Lingmo System Integration"
            font: LingmoTextStyle.Title
            color: LingmoTheme.fontPrimaryColor
            anchors.horizontalCenter: parent.horizontalCenter
        }

        // Example: Query system theme via D-Bus
        LingmoButton {
            text: "Query Theme Service"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                console.log("Querying org.lingmo.Theme...")
                // In production, use LingmoIpcClient to query
            }
        }

        // Example: Show current system info
        Rectangle {
            width: 300
            height: 120
            radius: 8
            color: LingmoTheme.windowBackgroundColor
            border.color: LingmoTheme.frameColor
            border.width: 1
            anchors.horizontalCenter: parent.horizontalCenter

            Column {
                anchors.centerIn: parent
                spacing: 8

                Text {
                    text: "System: " + Qt.platform.os
                    font: LingmoTextStyle.Body
                    color: LingmoTheme.fontPrimaryColor
                }
                Text {
                    text: "Qt: " + qtVersion
                    font: LingmoTextStyle.Caption
                    color: LingmoTheme.fontSecondaryColor
                }
                Text {
                    text: "Theme: " + (LingmoTheme.dark ? "Dark" : "Light")
                    font: LingmoTextStyle.Caption
                    color: LingmoTheme.fontSecondaryColor
                }
            }
        }
    }
}
