cmake_minimum_required(VERSION 3.20)

project(lingmo-example-basic-app VERSION 1.0.0 DESCRIPTION "Lingmo SDK Basic App Example" LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_AUTOMOC ON)

find_package(Qt6 REQUIRED COMPONENTS Core Gui Quick QuickControls2)
find_package(LingmoSdk REQUIRED COMPONENTS Quick Appearance Base)

qt_add_qml_module(lingmo-example-basic-app
    URI Lingmo.Example.BasicApp
    VERSION 1.0
    QML_FILES
        src/Main.qml
)

target_link_libraries(lingmo-example-basic-app PRIVATE
    Qt6::Core
    Qt6::Gui
    Qt6::Quick
    Qt6::QuickControls2
    LingmoSdk::Quick
    LingmoSdk::Appearance
    LingmoSdk::Base
)

install(TARGETS lingmo-example-basic-app RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR})
