cmake_minimum_required(VERSION 3.20)

project(lingmo-example-system-integration VERSION 1.0.0 DESCRIPTION "Lingmo SDK System Integration Example" LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_AUTOMOC ON)

find_package(Qt6 REQUIRED COMPONENTS Core DBus Quick QuickControls2)
find_package(LingmoSdk REQUIRED COMPONENTS Ipc Quick Appearance)

qt_add_qml_module(lingmo-example-system-integration
    URI Lingmo.Example.SystemIntegration
    VERSION 1.0
    QML_FILES
        src/Main.qml
)

target_link_libraries(lingmo-example-system-integration PRIVATE
    Qt6::Core
    Qt6::DBus
    Qt6::Quick
    Qt6::QuickControls2
    LingmoSdk::Ipc
    LingmoSdk::Quick
    LingmoSdk::Appearance
)

install(TARGETS lingmo-example-system-integration RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR})
