import QtQuick
import QtQuick.Controls 2.15

Window {
    id: window
    width: 1280
    height: 700
    visible: true
    title: qsTr("Crypto Note")

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: HomePage {}

        LoginPage {
            id: loginPage
            visible: false
        }

        RegisterPage {
            id: registerPage
            visible: false
        }

        SaveLoginPage {
            id: saveLoginPage
            visible: false
        }

        HomePage {
            id: homePage
            visible: false
        }
    }
}

