import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Layouts

Page {
    id: homePage
    anchors.fill: parent

    Rectangle {
        width: parent.width
        height: parent.height
        color: "#181818"

        Rectangle {
            id: topHomeMenuPanelRect
            width: parent.width
            height: 40

            RowLayout {
                anchors.fill: parent

                Button {
                    text: "Button 1"
                }

                Text {
                    text: "Home"
                }

                Button {
                    text: "Button 3"
                }
            }
        }

        Rectangle {
            id: bottomHomeMenuPanelRect
            width: parent.width
            height: 40
            anchors.bottom: parent.bottom

            RowLayout {
                anchors.fill: parent

                Button {
                    text: "Button 1"
                }

                Button {
                    text: "Button 1"
                }

                Button {
                    text: "Button 1"
                }

                Button {
                    text: "Button 1"
                }

                Button {
                    text: "Button 1"
                }
            }
        }
    }
}
