import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Layouts

Page {
    id: saveLoginPage
    anchors.fill: parent

    Rectangle {
        width: parent.width
        height: parent.height
        color: "#A40000"

        ColumnLayout {
            anchors.fill: parent

            Rectangle {
                width: 160
                height: 160
                Layout.alignment: Qt.AlignHCenter
                anchors.bottom: usernameTextOutput.top
                anchors.bottomMargin: 20
                color: "#A40000"

                Image {
                    source: "qrc:/img/Icon/free-icon-user.png"
                    anchors.fill: parent
                    fillMode: Image.PreserveAspectFit
                }
            }

            Text {
                id: usernameTextOutput
                text: "Username"
                color: "white"
                Layout.alignment: Qt.AlignHCenter
                anchors.top: parent.verticalCenter
                anchors.topMargin: 30
            }

            TextField {
                id: usernameIndificationInput
                implicitWidth: 200
                implicitHeight: 27
                placeholderText: "Пароль"
                placeholderTextColor: "grey"
                color: "white"
                Layout.alignment: Qt.AlignHCenter
                anchors.top: usernameTextOutput.bottom
                anchors.topMargin: 7
                echoMode: TextInput.Password
                verticalAlignment: TextInput.AlignVCenter

                background: Rectangle {
                    color: "black"
                    radius: 4
                    border.width: 2
                    border.color: "orange"
                }
            }

            Text {
                id: exitAcountText
                text: "Вийти з облікового запису"
                color: "white"
                Layout.alignment: Qt.AlignHCenter
                anchors.top: usernameIndificationInput.bottom
                anchors.topMargin: 5

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        //stackView.replace(saveLoginPage, registerPage);
                        //stackView.pop();
                        stackView.push(loginPage)
                    }
                }
            }
        }
    }
}





















