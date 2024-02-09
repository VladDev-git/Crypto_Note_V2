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
            color: "#181818"

            RowLayout {
                anchors.fill: parent

                Button {
                    implicitHeight: parent.height
                    implicitWidth: 55

                    contentItem: Image {
                        source: "qrc:/img/Icon/align-left.svg"
                        width: 35
                        height: parent.height
                        fillMode: Image.PreserveAspectFit
                    }

                    background: Rectangle {
                        color: "#181818"
                    }
                }

                Text {
                    text: "Home"
                    height: parent.height
                    //implicitHeight: parent.height
                    Layout.alignment: Qt.AlignHCenter
                    color: "white"
                }

                Button {
                    implicitHeight: parent.height
                    implicitWidth: 55
                    anchors.right: parent.right

                    contentItem: Image {
                        source: "qrc:/img/Icon/more-vertical.svg"
                        width: 35
                        height: parent.height
                        fillMode: Image.PreserveAspectFit
                    }

                    background: Rectangle {
                        color: "#181818"
                    }
                }
            }
        }

        Rectangle {
            id: bottomHomeMenuPanelRect
            width: parent.width
            height: 40
            anchors.bottom: parent.bottom
            color: "#181818"

            RowLayout {
                anchors.fill: parent

                Button {
                    implicitHeight: parent.height
                    implicitWidth: 55
                    anchors.right: searchModulBtn.left
                    anchors.rightMargin: 50

                    contentItem: Image {
                        source: "qrc:/img/Icon/menu.svg"
                        width: 35
                        height: parent.height
                        fillMode: Image.PreserveAspectFit
                    }

                    background: Rectangle {
                        color: "#181818"
                    }
                }

                Button {
                    id: searchModulBtn
                    implicitHeight: parent.height
                    implicitWidth: 55
                    anchors.right: addModulBtn.left
                    anchors.rightMargin: 50

                    contentItem: Image {
                        source: "qrc:/img/Icon/search.svg"
                        width: 35
                        height: parent.height
                        fillMode: Image.PreserveAspectFit
                    }

                    background: Rectangle {
                        color: "#181818"
                    }
                }

                Button {
                    id: addModulBtn
                    implicitHeight: parent.height
                    implicitWidth: 55
                    Layout.alignment: Qt.AlignHCenter

                    contentItem: Image {
                        source: "qrc:/img/Icon/plus-circle (1).svg"
                        width: 35
                        height: parent.height
                        fillMode: Image.PreserveAspectFit
                    }

                    background: Rectangle {
                        color: "#181818"
                    }
                }

                Button {
                    id: favoritesNotesListBtn
                    implicitHeight: parent.height
                    implicitWidth: 55
                    anchors.left: addModulBtn.right
                    anchors.leftMargin: 50

                    contentItem: Image {
                        source: "qrc:/img/Icon/star.svg"
                        width: 35
                        height: parent.height
                        fillMode: Image.PreserveAspectFit
                    }

                    background: Rectangle {
                        color: "#181818"
                    }
                }

                Button {
                    implicitHeight: parent.height
                    implicitWidth: 55
                    anchors.left: favoritesNotesListBtn.right
                    anchors.leftMargin: 50

                    contentItem: Image {
                        source: "qrc:/img/Icon/user.svg"
                        width: 35
                        height: parent.height
                        fillMode: Image.PreserveAspectFit
                    }

                    background: Rectangle {
                        color: "#181818"
                    }
                }
            }
        }
    }
}
