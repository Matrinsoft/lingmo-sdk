import QtQuick 2.15
import QtQuick.Controls 2.15
import Lingmo.Quick 3.1
import Lingmo.Appearance 1.0

LingmoWindow {
    id: root
    visible: true
    width: 640
    height: 480
    title: "Lingmo SDK Basic Example"

    color: LingmoTheme.dark ? "#1E1E1E" : "#FFFFFF"

    Column {
        anchors.centerIn: parent
        spacing: 20

        Text {
            text: "Welcome to Lingmo SDK"
            font: LingmoTextStyle.TitleLarge
            color: LingmoTheme.fontPrimaryColor
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            text: "Current theme: " + (LingmoTheme.dark ? "Dark" : "Light")
            font: LingmoTextStyle.Body
            color: LingmoTheme.fontSecondaryColor
            anchors.horizontalCenter: parent.horizontalCenter
        }

        LingmoButton {
            text: "Toggle Theme"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                if (LingmoTheme.darkMode === 0) {
                    LingmoTheme.darkMode = 2  // Dark
                } else {
                    LingmoTheme.darkMode = 0  // System
                }
            }
        }

        LingmoButton {
            text: "Get UUID"
            isPrimary: true
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: console.log("UUID:", LingmoTools.uuid())
        }

        Rectangle {
            width: 200
            height: 100
            radius: 8
            color: LingmoTheme.primaryColor
            anchors.horizontalCenter: parent.horizontalCenter

            Text {
                anchors.centerIn: parent
                text: "Primary Color"
                color: "white"
                font: LingmoTextStyle.BodyStrong
            }
        }
    }
}
