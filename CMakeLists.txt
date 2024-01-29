cmake_minimum_required(VERSION 3.16)

project(CryptoNotes_V2 VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(appCryptoNotes_V2
    main.cpp
)

qt_add_qml_module(appCryptoNotes_V2
    URI CryptoNotes_V2
    VERSION 1.0
    QML_FILES Main.qml
    QML_FILES LoginPage.qml
    QML_FILES RegisterPage.qml
    RESOURCES
    QML_FILES SaveLoginPage.qml
    QML_FILES HomePage.qml
    SOURCES user.h user.cpp
    SOURCES profil.h profil.cpp
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appCryptoNotes_V2 PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appCryptoNotes_V2
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appCryptoNotes_V2
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appCryptoNotes_V2
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
