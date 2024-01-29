import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Layouts

Page {
    id: registerPage

    Rectangle {
        width: parent.width
        height: parent.height
        color: "red"

        ColumnLayout {
            anchors.fill: parent

            TextField {
                id: newUsernameInput
                Layout.alignment: Qt.AlignHCenter
                placeholderText: "Нове ім'я користувача"
                placeholderTextColor: "gray"
                color: "white"
                anchors.top: parent.verticalCenter
                implicitWidth: 200
                implicitHeight: 27
                verticalAlignment: TextInput.AlignVCenter
                background: Rectangle {
                    color: "black"
                    radius: 4
                    border.width: 2
                    border.color: "orange"
                }
            }

            TextField {
                id: newPasswordInput
                Layout.alignment: Qt.AlignHCenter
                placeholderText: "Новий пароль"
                placeholderTextColor: "gray"
                color: "white"
                echoMode: TextInput.Password
                anchors.top: newUsernameInput.bottom
                anchors.topMargin: 5
                implicitWidth: 200
                implicitHeight: 27
                verticalAlignment: TextInput.AlignVCenter
                background: Rectangle {
                    color: "black"
                    radius: 4
                    border.width: 2
                    border.color: "orange"
                }
            }

            Button {
                id: registerBtn
                implicitWidth: 100
                implicitHeight: 22
                Layout.alignment: Qt.AlignHCenter
                //text: "Зареєструватися"
                anchors.top: newPasswordInput.bottom
                anchors.topMargin: 5
                Text {
                    text: "Зареєструватися"
                    color: "white"
                    anchors.centerIn: parent
                }

                background: Rectangle {
                    radius: 4
                    color: "gray"
                }

                onClicked: {
                    // Додайте код для обробки реєстрації
                }
            }

            Text {
                Layout.alignment: Qt.AlignHCenter
                text: "Вже маєте обліковий запис?"
                color: "white"
                anchors.top: registerBtn.bottom
                anchors.topMargin: 3
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        //stackView.replace(registerPage, loginPage);
                        stackView.pop()
                    }
                }
            }

            Rectangle {
                width: 160
                height: 160
                Layout.alignment: Qt.AlignHCenter
                anchors.bottom: newUsernameInput.top
                anchors.bottomMargin: 10
                color: "red"

                Image {
                    source: "qrc:/Icon/free-icon-user.png"
                    anchors.fill: parent
                    fillMode: Image.PreserveAspectFit
                }
            }
        }
    }
}
