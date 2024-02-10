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

                    onClicked: {

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

        Rectangle {
            id: centerContentModularRect
            width: parent.width
            height: parent.height - topHomeMenuPanelRect.height - bottomHomeMenuPanelRect.height
            anchors.top: topHomeMenuPanelRect.bottom
            anchors.bottom: bottomHomeMenuPanelRect.top
            color: "#181818"

            ScrollView {
                anchors.fill: parent
                // background: Rectangle {
                //     implicitWidth: 8
                //     color: "transparent"
                // }

                // contentItem: Rectangle {
                //     implicitWidth: 8
                //     color: "#181818"
                // }

                // ScrollBar.vertical: ScrollBar {
                //     //policy: ScrollBar.AlwaysOn
                //     background: Rectangle {
                //         implicitWidth: 8
                //         color: "transparent"
                //     }
                //     contentItem: Rectangle {
                //         implicitWidth: 8
                //         color: "orange"
                //     }
                // }

                ScrollBar.vertical: ScrollBar {
                        id: scrollBar
                        width: 8
                        policy: ScrollBar.AlwaysOn

                        background: Rectangle {
                            implicitWidth: 8
                            color: "transparent"
                        }

                        contentItem: Rectangle {
                            implicitHeight: parent.height * parent.height / scrollView.contentHeight
                            color: "orange" // Колір полоси прокрутки
                        }
                    }

                GridLayout {
                    anchors.fill: parent
                    columns: 3
                    columnSpacing: 20
                    rowSpacing: 20
                    anchors.leftMargin: 15
                    anchors.topMargin: 10

                    Repeater {
                        model: 30

                        Rectangle {
                            width: 220
                            height: 220
                            color: "grey"
                            radius: 20

                            Text {
                                anchors.centerIn: parent
                                text: "Item"
                            }
                        }
                    }
                }
            }
        }
    }
}
