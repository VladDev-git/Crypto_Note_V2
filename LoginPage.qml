import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Layouts

Page {
    id: loginPage
    anchors.fill: parent

    Rectangle {
        width: parent.width
        height: parent.height
        color: "red"

        ColumnLayout {
            id: colm
            anchors.fill: parent

            TextField {
                id: usernameInput
                implicitWidth: 200
                implicitHeight: 27
                placeholderText: "Ім'я користувача"
                placeholderTextColor: "gray"
                color: "white"
                Layout.alignment: Qt.AlignHCenter
                anchors.top: parent.verticalCenter
                verticalAlignment: TextInput.AlignVCenter
                background: Rectangle {
                    color: "black"
                    radius: 4
                    border.width: 2
                    border.color: "orange"
                }
            }

            TextField {
                id: passwordInput
                implicitWidth: 200
                implicitHeight: 27
                placeholderText: "Пароль"
                placeholderTextColor: "gray"
                color: "white"
                echoMode: TextInput.Password
                anchors.top: usernameInput.bottom
                Layout.alignment: Qt.AlignHCenter
                anchors.topMargin: 5
                verticalAlignment: TextInput.AlignVCenter
                background: Rectangle {
                    color: "black"
                    radius: 4
                    border.width: 2
                    border.color: "orange"
                }
            }

            Button {
                id: loginBtn
                implicitWidth: 55
                implicitHeight: 22
                //text: ""
                Layout.alignment: Qt.AlignHCenter
                anchors.top: passwordInput.bottom
                anchors.topMargin: 5
                Text {
                    text: "Увійти"
                    color: "white"
                    anchors.centerIn: parent
                }

                background: Rectangle {
                    radius: 4
                    color: "gray"
                }
                onClicked: {
                    // код для обробки входу
                }
            }

            Text {
                text: "Не маєте облікового запису?"
                color: "white"
                Layout.alignment: Qt.AlignHCenter
                anchors.top: loginBtn.bottom
                anchors.topMargin: 5
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        stackView.push(registerPage)
                        //stackView.pop()
                        //stackView.replace(loginPage, registerPage);
                    }
                }
            }

            Rectangle {
                    width: 160
                    height: 160
                    Layout.alignment: Qt.AlignHCenter
                    anchors.bottom: usernameInput.top
                    anchors.bottomMargin: 10
                    color: "red"

                    Image {
                        source: "qrc:/Icon/free-icon-user.png"
                        anchors.fill: parent
                        fillMode: Image.PreserveAspectFit  // Режим збереження пропорцій зображення
                    }
            }
        }
    }
}
